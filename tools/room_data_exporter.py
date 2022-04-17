import argparse
import sys
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

# this will be altering the data format a bit to accomodate some patches to base game
# entries that are exactly the same except for 1 byte will now be condensed
# some old exceptions are gone now too
def read_screen_exits(start_addr, rom):
	(worlds,levels,screens) = read_map_table(start_addr,rom)
	bank = int(start_addr/0x4000)
	entries = []
	for w_i,w in enumerate(worlds):
		world_name = world_names[w_i]
		w_global = cd.get_global_address(w,bank)
		world_string = "{}ExitTables: ; {:x} ({:x}:{:x})\n".format(world_name, w_global,bank,w)
		for l_i,l in enumerate(levels[w_i]):
			level_name = level_names[w_i][l_i]
			l_global = cd.get_global_address(l,bank)
			world_string += "\tdw {}{}ExitTables\n".format(world_name,level_name)
			level_string = "{}{}ExitTables: ; {:x} ({:x}:{:x})\n".format(world_name,level_name,w_global,bank,w)
			screen_list = [] # using this to account for a couple irregularities, see below -- actually this is way more useful
			for s_i,s in enumerate(screens[w_i][l_i]):
				s_global = cd.get_global_address(s,bank)
				if s < 0x4000:
					# this accounts for the two broken inca exits. Since it's not getting added
					# to screen_list, we can use len() to get a correct index
					# -- This was fixed by the hardcoded (3,2,9) fix. Keeping this in case it fixed something I didn't even know about though
					level_string += "\tdw {}\n".format(s)
					continue
				if  s in screen_list:
					# this accounts for the double entry in inca boss
					level_string += "\tdw {}{}{}ExitTable\n".format(world_name,level_name,screen_list.index(s))
				else:
					level_string += "\tdw {}{}{}ExitTable\n".format(world_name,level_name,len(screen_list))
					screen_list.append(s)
			entries.append((l_global,level_string, l_global + 2*screen_amounts[w_i][l_i]))

			# maybe I shouldn't reuse s_i and s, but these are still screens, just the inner section of them
			for s_i,s in enumerate(screen_list):
				s_global = cd.get_global_address(s,bank)
				screen_string = "{}{}{}ExitTable: ; {:x} ({:x}:{:x})\n".format(world_name,level_name,s_i,s_global,bank,s)
				prelim_amount = rom[s_global]
				screen_string_modifier = ""
				exit_string = "\tbegin_exits \"{}{}{}\"\n".format(world_name,level_name,s_i)
				exit_entries = [] # I can't believe I have to do this pattern twice, see "entries"

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
					e_current += 3
					if jump_type == 1:
						prelim_exit_list.append(((x_check,y_check),(jump_type,rom[e_current],rom[e_current+1],rom[e_current+2])))
						e_current += 3
					else:
						level = rom[e_current]
						level = level_names[w_i][level].upper()
						screen = rom[e_current+1]
						new_x = rom[e_current+2]
						new_y = rom[e_current+3]
						direction = rom[e_current+4]
						direction = directions[direction]
						prelim_exit_list.append(((x_check,y_check),(jump_type,level,screen,new_x,new_y,direction)))
						e_current += 5

				amount = prelim_amount

				local_exit_string = ""
				unique_exits = 0
				i = 0
				while i < prelim_amount:
					screen_string_modifier += "\tdw {}{}{}Exit_{}\n".format(world_name,level_name,s_i,unique_exits)
					unique_exits += 1
					(loc,data) = prelim_exit_list[i]
					local_exit_string += "\texit {}, {}".format(loc[0],loc[1])

					# trying to cut out some data duplication
					if i+1 < prelim_amount and data == prelim_exit_list[i+1][1]:
						# if the next entry has the same data (but different location)
						(next_x,next_y) = prelim_exit_list[i+1][0]
						local_exit_string += ", {}, {}".format(next_x,next_y)
						i += 1
					else:
						local_exit_string += ", {}, {}".format(loc[0],loc[1])

					for d in data:
						local_exit_string += ", {}".format(d)
					local_exit_string += "\n"
					i += 1


				exit_entries.append((e_global,local_exit_string,e_current))

				screen_string += "\tdb {}\n".format(amount) + screen_string_modifier


				# since some entries get linked out of order, sort what we have so the code is correct
				exit_entries.sort(key=lambda y: y[0])
				last_exit_end = None
				for (entry_start, entry, entry_end) in exit_entries:
					#if last_exit_end is not None and entry_start > last_exit_end: # > should probably be != but I have to account for the caveman level
					#	exit_string += "WARNING!!!!!! DATA MISMATCH! LAST END: {:x} CURRENT START: {:x}\n".format(last_exit_end,entry_start)
					exit_string += entry
					last_exit_end = entry_end
				exit_string += "\tend_exits\n"
				if amount > 0:
					entries.append((exit_entries[0][0],exit_string,last_exit_end))


				entries.append((s_global,screen_string,s_global + 1 + 2*amount))

		entries.append((w_global,world_string,w_global + 2*level_amount))

	# since some entries get linked out of order, sort what we have so the code is correct
	output_string = ""
	entries.sort(key=lambda y: y[0])
	last_end = None
	for (entry_start, entry, entry_end) in entries:
		#if last_end is not None and entry_start != last_end:
		#	output_string += "WARNING!!!!!! DATA MISMATCH! LAST END: {:x} CURRENT START: {:x}\n".format(last_end,entry_start)
		output_string += entry
		last_end = entry_end
	print(output_string)

if __name__ == "__main__":
	parser = argparse.ArgumentParser(description="A modifiable tool for extracting arbitrary room-based data for croc2")
	parser.add_argument("-r", dest="rom", default="baserom.gbc")
	parser.add_argument("location")
	args = parser.parse_args()

	start_addr = cd.get_raw_addr(args.location)
	bank = int(start_addr/0x4000)

	with open(args.rom, mode='rb') as game:
		rom = game.read()

	read_screen_exits(start_addr,rom)
