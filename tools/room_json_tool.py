import argparse
import sys
import json
import crocdisasm as cd

world_amount = 4
level_amount = 5 # every world has a hub, 3 levels, and a boss
# set up by world and by level
screen_amounts = [[1,10,11,13,1],[1,10,11,14,1],[1,15,14,12,1],[1,14,11,10,2]]

world_names = ["Sailor","Cossack","Caveman","Inca"]
level_names = [	["Hub","Cage","Crow","Items","Boss"],["Hub","Herb","Mines","Snowman","Boss"],
				["Hub","Robo","Gears","Water","Boss"],["Hub","Letter","Mayor","Jewel","Boss"] ]
directions = ["UP","LEFT","DOWN","RIGHT"]

# given a starting location, returns a tuple of the following:
# - location of each world table (organized as a list of world_amount locations)
# - location of each level table (organized as a list of world_amount lists,
#		each with level_amount locations)
# - location of each screen table/data (organized as a list of world_amoiunt lists, 
#		each with level_amount lists, each with screen_amounts[world][level] screen entries)
def read_map_table(loc,rom):
	bank = int(loc/0x4000)
	world_list = []
	level_lists = []
	screen_lists = []
	for i in range(0,world_amount):
		world_loc = (0xff00 & rom[loc+i*2+1] << 8) + (0xff & rom[loc+i*2])
		world_list.append(world_loc)
		world_loc = cd.get_global_address(world_loc,bank)
		current_level_list = []
		current_level_screen_list = []
		for j in range(0, level_amount):
			level_loc = (0xff00 & rom[world_loc+j*2+1] << 8) + (0xff & rom[world_loc+j*2]) 
			current_level_list.append(level_loc)
			level_loc = cd.get_global_address(level_loc,bank)
			current_screen_list = []
			for k in range(0, screen_amounts[i][j]):
				screen_loc = (0xff00 & rom[level_loc+k*2+1] << 8) + (0xff & rom[level_loc+k*2]) 
				current_screen_list.append(screen_loc)
			current_level_screen_list.append(current_screen_list)
		level_lists.append(current_level_list)
		screen_lists.append(current_level_screen_list)
	return (world_list,level_lists,screen_lists)

# for the purpose of randomizing room data
def read_exits_to_json(start_addr, rom):
	exits = {}
	(worlds,levels,screens) = read_map_table(start_addr,rom)
	bank = int(start_addr/0x4000)
	entries = [] # probably inefficient to keep appending empty lists but w/e
	for w_i,w in enumerate(worlds):
		world_exits = {}
		world_name = world_names[w_i]
		w_global = cd.get_global_address(w,bank)
		for l_i,l in enumerate(levels[w_i]):
			level_exits = []
			level_name = level_names[w_i][l_i]
			l_global = cd.get_global_address(l,bank)
			screen_list = [] # using this to account for a couple irregularities, see below -- actually this is way more useful

			# maybe I shouldn't reuse s_i and s, but these are still screens, just the inner section of them
			for s_i,s in enumerate(screens[w_i][l_i]):
				s_global = cd.get_global_address(s,bank)
				prelim_amount = rom[s_global]
				screen_string_modifier = ""

				# another inconsistency, this time I have to hard code it. Some levels have more exit data than they claim, but it's damaged
				if (w_i,l_i,s_i) == (3,2,9): # Inca Mayor 9
					prelim_amount -= 2

				prelim_exit_list = []
				for e_i in range(0,prelim_amount):
					e = (0xff00 & rom[s_global + 2 + 2*e_i] << 8)+(0xff & rom[s_global + 1 + 2*e_i])
					e_global = cd.get_global_address(e,bank)
					e_current = e_global
					x_check = rom[e_current]
					y_check = rom[e_current+1]
					jump_type = rom[e_current+2]
					world = world_names[w_i].upper()
					e_current += 3
					if jump_type == 1:
						prelim_exit_list.append(((x_check,y_check),(jump_type,world,rom[e_current],rom[e_current+1],rom[e_current+2])))
						e_current += 3
					else:
						level = rom[e_current]
						level = level_names[w_i][level].upper()
						screen = rom[e_current+1]
						new_x = rom[e_current+2]
						new_y = rom[e_current+3]
						direction = rom[e_current+4]
						direction = directions[direction]
						prelim_exit_list.append(((x_check,y_check),(jump_type,world, level,screen,new_x,new_y,direction)))
						e_current += 5

				amount = prelim_amount

				i = 0
				screen_exits = []
				while i < prelim_amount:
					(loc,data) = prelim_exit_list[i]

					if data[0] == 1:
						# skipping shops for now 
						i+=1
						amount -= 1
						continue

					exit_output = {
							"x1": loc[0],
							"y1": loc[1],
							"x2": loc[0],
							"y2": loc[1],
							"exit_type": data[0],
							"old_label": "{}{}{}Exit_{}".format(world_names[w_i],level_names[w_i][l_i],s_i,len(screen_exits)),
							"world": data[1],
							"level": data[2],
							"screen": data[3],
							"new_x": data[4],
							"new_y": data[5],
							"new_direction": data[6],
							}

					# trying to cut out some data duplication
					if i+1 < prelim_amount and data == prelim_exit_list[i+1][1]:
						# if the next entry has the same data (but different location)
						(next_x,next_y) = prelim_exit_list[i+1][0]
						exit_output["x2"] = next_x
						exit_output["y2"] = next_y
						amount -= 1

					screen_exits.append(exit_output)
					i += 1
				if len(screen_exits) > 0:
					level_exits.append(screen_exits)
			if len(level_exits) > 0:
				world_exits[level_names[w_i][l_i]] = level_exits
		if len(world_exits) > 0:
			exits[world_names[w_i]] = world_exits
	print(json.dumps(exits))

if __name__ == "__main__":
	parser = argparse.ArgumentParser(description="A modifiable tool for extracting arbitrary room-based data for croc2")
	parser.add_argument("-r", dest="rom", default="baserom.gbc")
	parser.add_argument("location")
	args = parser.parse_args()

	start_addr = cd.get_raw_addr(args.location)
	bank = int(start_addr/0x4000)

	with open(args.rom, mode='rb') as game:
		rom = game.read()

	read_exits_to_json(start_addr,rom)
