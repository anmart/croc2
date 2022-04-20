; MODIFIED from base game. Some Inconsistent data was removed, and exits are condensed some
; - I've also added a world value, allowing maps to link to levels/screens on other worlds.
; the layout looks something like this
; world exit table -> level exit table -> screen exit table -> screen table (amount of exits followed by a pointer for each exit) -> various exit data, different depending on type
; the exit data starts as: x check, y check, x2 check, y2 check, jump index. (x2 check and y2 check are new, now it can check 2 tiles at once, as that is very common)
; it checks for croc's x and y locations, then runs different exit code depending on index.
; an index of 1 means you've entered a shop, the values aren't well known
; other exits use the following data: new level, new screen, new x, new y, new direction
SailorExitTables:
	dw SailorHubExitTables
	dw SailorCageExitTables
	dw SailorCrowExitTables
	dw SailorItemsExitTables
	dw SailorBossExitTables
CossackExitTables:
	dw CossackHubExitTables
	dw CossackHerbExitTables
	dw CossackMinesExitTables
	dw CossackSnowmanExitTables
	dw CossackBossExitTables
CavemanExitTables:
	dw CavemanHubExitTables
	dw CavemanRoboExitTables
	dw CavemanGearsExitTables
	dw CavemanWaterExitTables
	dw CavemanBossExitTables
IncaExitTables:
	dw IncaHubExitTables
	dw IncaLetterExitTables
	dw IncaMayorExitTables
	dw IncaJewelExitTables
	dw IncaBossExitTables

SailorHubExitTables:
	dw SailorHub0ExitTable
SailorHub0ExitTable:
	db 5
	dw SailorHub0Exit_0
	dw SailorHub0Exit_1
	dw SailorHub0Exit_2
	dw SailorHub0Exit_3
	dw SailorHub0Exit_4
	begin_exits "SailorHub0"
	exit 0, 16, 0, 17, 0, SAILOR, CAGE, 0, 240, 208, LEFT
	exit 31, 18, 31, 19, 0, SAILOR, CROW, 0, 8, 152, RIGHT
	exit 7, 0, 8, 0, 0, SAILOR, ITEMS, 0, 128, 240, UP
	exit 24, 0, 25, 0, 0, SAILOR, BOSS, 0, 64, 108, UP
	exit 16, 7, 17, 7, 1, SAILOR, 3, 136, 64
	end_exits

SailorCageExitTables:
	dw SailorCage0ExitTable
	dw SailorCage1ExitTable
	dw SailorCage2ExitTable
	dw SailorCage3ExitTable
	dw SailorCage4ExitTable
	dw SailorCage5ExitTable
	dw SailorCage6ExitTable
	dw SailorCage7ExitTable
	dw SailorCage8ExitTable
	dw SailorCage9ExitTable
SailorCage0ExitTable:
	db 5
	dw SailorCage0Exit_0
	dw SailorCage0Exit_1
	dw SailorCage0Exit_2
	dw SailorCage0Exit_3
	dw SailorCage0Exit_4
	begin_exits "SailorCage0"
	exit 31, 25, 31, 26, 0, SAILOR, HUB, 0, 8, 136, RIGHT
	exit 3, 0, 4, 0, 0, SAILOR, CAGE, 2, 40, 240, UP
	exit 31, 4, 31, 5, 0, SAILOR, CAGE, 5, 16, 208, RIGHT
	exit 4, 27, 4, 27, 2, SAILOR, CAGE, 3, 76, 40, DOWN
	exit 0, 27, 0, 28, 0, SAILOR, CAGE, 6, 240, 176, LEFT
	end_exits
SailorCage1ExitTable:
	db 3
	dw SailorCage1Exit_0
	dw SailorCage1Exit_1
	dw SailorCage1Exit_2
	begin_exits "SailorCage1"
	exit 0, 5, 0, 6, 0, SAILOR, CAGE, 5, 240, 56, LEFT
	exit 0, 21, 0, 22, 0, SAILOR, CAGE, 5, 240, 208, LEFT
	exit 23, 4, 23, 4, 3, SAILOR, CAGE, 4, 128, 208, UP
	end_exits
SailorCage2ExitTable:
	db 2
	dw SailorCage2Exit_0
	dw SailorCage2Exit_1
	begin_exits "SailorCage2"
	exit 4, 31, 5, 31, 0, SAILOR, CAGE, 0, 32, 8, DOWN
	exit 31, 24, 31, 25, 0, SAILOR, CAGE, 5, 8, 56, RIGHT
	end_exits
SailorCage3ExitTable:
	db 1
	dw SailorCage3Exit_0
	begin_exits "SailorCage3"
	exit 4, 12, 4, 12, 2, SAILOR, CAGE, 0, 36, 224, DOWN
	end_exits
SailorCage4ExitTable:
	db 0
SailorCage5ExitTable:
	db 5
	dw SailorCage5Exit_0
	dw SailorCage5Exit_1
	dw SailorCage5Exit_2
	dw SailorCage5Exit_3
	dw SailorCage5Exit_4
	begin_exits "SailorCage5"
	exit 0, 25, 0, 26, 0, SAILOR, CAGE, 0, 240, 40, LEFT
	exit 31, 6, 31, 7, 0, SAILOR, CAGE, 1, 8, 48, RIGHT
	exit 31, 25, 31, 26, 0, SAILOR, CAGE, 1, 16, 176, RIGHT
	exit 18, 0, 19, 0, 0, SAILOR, CAGE, 8, 176, 240, UP
	exit 0, 6, 0, 7, 0, SAILOR, CAGE, 2, 240, 200, LEFT
	end_exits
SailorCage6ExitTable:
	db 2
	dw SailorCage6Exit_0
	dw SailorCage6Exit_1
	begin_exits "SailorCage6"
	exit 31, 21, 31, 22, 0, SAILOR, CAGE, 0, 16, 224, RIGHT
	exit 16, 0, 17, 0, 0, SAILOR, CAGE, 7, 120, 240, UP
	end_exits
SailorCage7ExitTable:
	db 2
	dw SailorCage7Exit_0
	dw SailorCage7Exit_1
	begin_exits "SailorCage7"
	exit 14, 31, 15, 31, 0, SAILOR, CAGE, 6, 136, 8, DOWN
	exit 31, 4, 31, 5, 0, SAILOR, CAGE, 8, 8, 80, RIGHT
	end_exits
SailorCage8ExitTable:
	db 3
	dw SailorCage8Exit_0
	dw SailorCage8Exit_1
	dw SailorCage8Exit_2
	begin_exits "SailorCage8"
	exit 0, 9, 0, 10, 0, SAILOR, CAGE, 7, 240, 40, LEFT
	exit 13, 0, 14, 0, 0, SAILOR, CAGE, 9, 120, 240, UP
	exit 21, 31, 22, 31, 0, SAILOR, CAGE, 5, 152, 8, DOWN
	end_exits
SailorCage9ExitTable:
	db 1
	dw SailorCage9Exit_0
	begin_exits "SailorCage9"
	exit 14, 31, 15, 31, 0, SAILOR, CAGE, 8, 112, 8, DOWN
	end_exits

SailorCrowExitTables:
	dw SailorCrow0ExitTable
	dw SailorCrow1ExitTable
	dw SailorCrow2ExitTable
	dw SailorCrow3ExitTable
	dw SailorCrow4ExitTable
	dw SailorCrow5ExitTable
	dw SailorCrow6ExitTable
	dw SailorCrow7ExitTable
	dw SailorCrow8ExitTable
	dw SailorCrow9ExitTable
	dw SailorCrow10ExitTable
SailorCrow0ExitTable:
	db 2
	dw SailorCrow0Exit_0
	dw SailorCrow0Exit_1
	begin_exits "SailorCrow0"
	exit 0, 18, 0, 19, 0, SAILOR, HUB, 0, 240, 152, LEFT
	exit 31, 5, 31, 6, 0, SAILOR, CROW, 1, 8, 48, RIGHT
	end_exits
SailorCrow1ExitTable:
	db 3
	dw SailorCrow1Exit_0
	dw SailorCrow1Exit_1
	dw SailorCrow1Exit_2
	begin_exits "SailorCrow1"
	exit 0, 5, 0, 6, 0, SAILOR, CROW, 0, 240, 48, LEFT
	exit 31, 12, 31, 13, 0, SAILOR, CROW, 2, 8, 104, RIGHT
	exit 31, 19, 31, 20, 0, SAILOR, CROW, 2, 8, 160, RIGHT
	end_exits
SailorCrow2ExitTable:
	db 6
	dw SailorCrow2Exit_0
	dw SailorCrow2Exit_1
	dw SailorCrow2Exit_2
	dw SailorCrow2Exit_3
	dw SailorCrow2Exit_4
	dw SailorCrow2Exit_5
	begin_exits "SailorCrow2"
	exit 0, 12, 0, 13, 0, SAILOR, CROW, 1, 240, 104, LEFT
	exit 0, 19, 0, 20, 0, SAILOR, CROW, 1, 240, 160, LEFT
	exit 22, 0, 23, 0, 0, SAILOR, CROW, 4, 64, 240, UP
	exit 31, 18, 31, 19, 0, SAILOR, CROW, 3, 8, 112, RIGHT
	exit 27, 10, 27, 10, 3, SAILOR, CROW, 6, 200, 208, UP
	exit 12, 0, 13, 0, 0, SAILOR, CROW, 7, 104, 240, UP
	end_exits
SailorCrow3ExitTable:
	db 3
	dw SailorCrow3Exit_0
	dw SailorCrow3Exit_1
	dw SailorCrow3Exit_2
	begin_exits "SailorCrow3"
	exit 0, 13, 0, 14, 0, SAILOR, CROW, 2, 240, 152, LEFT
	exit 5, 0, 6, 0, 0, SAILOR, CROW, 4, 208, 240, UP
	exit 23, 15, 23, 15, 2, SAILOR, CROW, 5, 72, 40, DOWN
	end_exits
SailorCrow4ExitTable:
	db 2
	dw SailorCrow4Exit_0
	dw SailorCrow4Exit_1
	begin_exits "SailorCrow4"
	exit 7, 31, 8, 31, 0, SAILOR, CROW, 2, 184, 8, DOWN
	exit 25, 31, 26, 31, 0, SAILOR, CROW, 3, 48, 8, DOWN
	end_exits
SailorCrow5ExitTable:
	db 1
	dw SailorCrow5Exit_0
	begin_exits "SailorCrow5"
	exit 4, 10, 4, 10, 2, SAILOR, CROW, 3, 184, 128, DOWN
	end_exits
SailorCrow6ExitTable:
	db 0
SailorCrow7ExitTable:
	db 4
	dw SailorCrow7Exit_0
	dw SailorCrow7Exit_1
	dw SailorCrow7Exit_2
	dw SailorCrow7Exit_3
	begin_exits "SailorCrow7"
	exit 12, 31, 13, 31, 0, SAILOR, CROW, 2, 104, 8, DOWN
	exit 31, 10, 31, 11, 0, SAILOR, CROW, 8, 8, 88, RIGHT
	exit 0, 11, 0, 12, 0, SAILOR, CROW, 9, 240, 96, LEFT
	exit 12, 0, 13, 0, 0, SAILOR, CROW, 10, 104, 240, UP
	end_exits
SailorCrow8ExitTable:
	db 2
	dw SailorCrow8Exit_0
	dw SailorCrow8Exit_1
	begin_exits "SailorCrow8"
	exit 0, 10, 0, 11, 0, SAILOR, CROW, 7, 240, 88, LEFT
	exit 31, 10, 31, 11, 0, SAILOR, CROW, 9, 8, 96, RIGHT
	end_exits
SailorCrow9ExitTable:
	db 2
	dw SailorCrow9Exit_0
	dw SailorCrow9Exit_1
	begin_exits "SailorCrow9"
	exit 0, 11, 0, 12, 0, SAILOR, CROW, 8, 240, 88, LEFT
	exit 31, 11, 31, 12, 0, SAILOR, CROW, 7, 8, 96, RIGHT
	end_exits
SailorCrow10ExitTable:
	db 7
	dw SailorCrow10Exit_0
	dw SailorCrow10Exit_1
	dw SailorCrow10Exit_2
	dw SailorCrow10Exit_3
	dw SailorCrow10Exit_4
	dw SailorCrow10Exit_5
	dw SailorCrow10Exit_6
	begin_exits "SailorCrow10"
	exit 24, 23, 25, 23, 0, SAILOR, CROW, 10, 56, 40, DOWN
	exit 15, 23, 16, 23, 0, SAILOR, CROW, 10, 200, 40, DOWN
	exit 6, 23, 7, 23, 0, SAILOR, CROW, 10, 128, 40, DOWN
	exit 15, 4, 16, 4, 0, SAILOR, CROW, 10, 200, 192, DOWN
	exit 24, 4, 25, 4, 0, SAILOR, CROW, 10, 56, 192, DOWN
	exit 6, 4, 7, 4, 0, SAILOR, CROW, 10, 128, 192, DOWN
	exit 12, 31, 13, 31, 0, SAILOR, CROW, 7, 104, 8, DOWN
	end_exits

SailorItemsExitTables:
	dw SailorItems0ExitTable
	dw SailorItems1ExitTable
	dw SailorItems2ExitTable
	dw SailorItems3ExitTable
	dw SailorItems4ExitTable
	dw SailorItems5ExitTable
	dw SailorItems6ExitTable
	dw SailorItems7ExitTable
	dw SailorItems8ExitTable
	dw SailorItems9ExitTable
	dw SailorItems10ExitTable
	dw SailorItems11ExitTable
	dw SailorItems12ExitTable
SailorItems0ExitTable:
	db 4
	dw SailorItems0Exit_0
	dw SailorItems0Exit_1
	dw SailorItems0Exit_2
	dw SailorItems0Exit_3
	begin_exits "SailorItems0"
	exit 15, 31, 16, 31, 0, SAILOR, HUB, 0, 64, 8, DOWN
	exit 5, 0, 6, 0, 0, SAILOR, ITEMS, 8, 48, 240, UP
	exit 24, 0, 25, 0, 0, SAILOR, ITEMS, 8, 200, 240, UP
	exit 14, 6, 14, 6, 2, SAILOR, ITEMS, 6, 88, 88, DOWN
	end_exits
SailorItems1ExitTable:
	db 6
	dw SailorItems1Exit_0
	dw SailorItems1Exit_1
	dw SailorItems1Exit_2
	dw SailorItems1Exit_3
	dw SailorItems1Exit_4
	dw SailorItems1Exit_5
	begin_exits "SailorItems1"
	exit 22, 0, 23, 0, 0, SAILOR, ITEMS, 4, 112, 240, UP
	exit 31, 6, 31, 7, 0, SAILOR, ITEMS, 10, 8, 40, RIGHT
	exit 31, 17, 31, 18, 0, SAILOR, ITEMS, 10, 8, 216, RIGHT
	exit 24, 31, 25, 31, 0, SAILOR, ITEMS, 8, 200, 8, DOWN
	exit 5, 31, 6, 31, 0, SAILOR, ITEMS, 8, 48, 8, DOWN
	exit 0, 15, 0, 16, 0, SAILOR, ITEMS, 9, 240, 200, LEFT
	end_exits
SailorItems2ExitTable:
	db 3
	dw SailorItems2Exit_0
	dw SailorItems2Exit_1
	dw SailorItems2Exit_2
	begin_exits "SailorItems2"
	exit 17, 0, 18, 0, 0, SAILOR, ITEMS, 5, 56, 232, UP
	exit 31, 18, 31, 19, 0, SAILOR, ITEMS, 9, 8, 40, RIGHT
	exit 9, 18, 9, 18, 3, SAILOR, ITEMS, 7, 128, 208, UP
	end_exits
SailorItems3ExitTable:
	db 2
	dw SailorItems3Exit_0
	dw SailorItems3Exit_1
	begin_exits "SailorItems3"
	exit 0, 6, 0, 7, 0, SAILOR, ITEMS, 10, 240, 40, LEFT
	exit 0, 17, 0, 18, 0, SAILOR, ITEMS, 10, 240, 216, LEFT
	end_exits
SailorItems4ExitTable:
	db 3
	dw SailorItems4Exit_0
	dw SailorItems4Exit_1
	dw SailorItems4Exit_2
	begin_exits "SailorItems4"
	exit 0, 6, 0, 7, 0, SAILOR, ITEMS, 5, 240, 56, LEFT
	exit 0, 15, 0, 16, 0, SAILOR, ITEMS, 5, 240, 128, LEFT
	exit 13, 31, 14, 31, 0, SAILOR, ITEMS, 1, 184, 8, UP
	end_exits
SailorItems5ExitTable:
	db 3
	dw SailorItems5Exit_0
	dw SailorItems5Exit_1
	dw SailorItems5Exit_2
	begin_exits "SailorItems5"
	exit 31, 6, 31, 7, 0, SAILOR, ITEMS, 4, 8, 56, RIGHT
	exit 31, 15, 31, 16, 0, SAILOR, ITEMS, 4, 8, 128, RIGHT
	exit 6, 30, 7, 30, 0, SAILOR, ITEMS, 2, 144, 8, DOWN
	end_exits
SailorItems6ExitTable:
	db 1
	dw SailorItems6Exit_0
	begin_exits "SailorItems6"
	exit 10, 7, 10, 7, 2, SAILOR, ITEMS, 0, 112, 56, DOWN
	end_exits
SailorItems7ExitTable:
	db 0
SailorItems8ExitTable:
	db 4
	dw SailorItems8Exit_0
	dw SailorItems8Exit_1
	dw SailorItems8Exit_2
	dw SailorItems8Exit_3
	begin_exits "SailorItems8"
	exit 24, 31, 25, 31, 0, SAILOR, ITEMS, 0, 200, 8, DOWN
	exit 5, 31, 6, 31, 0, SAILOR, ITEMS, 0, 48, 8, DOWN
	exit 24, 0, 25, 0, 0, SAILOR, ITEMS, 1, 200, 240, UP
	exit 5, 0, 6, 0, 0, SAILOR, ITEMS, 1, 48, 240, UP
	end_exits
SailorItems9ExitTable:
	db 3
	dw SailorItems9Exit_0
	dw SailorItems9Exit_1
	dw SailorItems9Exit_2
	begin_exits "SailorItems9"
	exit 31, 24, 31, 25, 0, SAILOR, ITEMS, 1, 8, 128, RIGHT
	exit 23, 0, 24, 0, 0, SAILOR, ITEMS, 11, 200, 240, UP
	exit 0, 4, 0, 5, 0, SAILOR, ITEMS, 2, 240, 152, LEFT
	end_exits
SailorItems10ExitTable:
	db 4
	dw SailorItems10Exit_0
	dw SailorItems10Exit_1
	dw SailorItems10Exit_2
	dw SailorItems10Exit_3
	begin_exits "SailorItems10"
	exit 0, 4, 0, 5, 0, SAILOR, ITEMS, 1, 240, 56, LEFT
	exit 0, 26, 0, 27, 0, SAILOR, ITEMS, 1, 240, 144, LEFT
	exit 31, 4, 31, 5, 0, SAILOR, ITEMS, 3, 8, 56, RIGHT
	exit 31, 26, 31, 27, 0, SAILOR, ITEMS, 3, 8, 144, RIGHT
	end_exits
SailorItems11ExitTable:
	db 2
	dw SailorItems11Exit_0
	dw SailorItems11Exit_1
	begin_exits "SailorItems11"
	exit 24, 31, 25, 31, 0, SAILOR, ITEMS, 9, 192, 8, DOWN
	exit 13, 0, 14, 0, 0, SAILOR, ITEMS, 12, 64, 240, UP
	end_exits
SailorItems12ExitTable:
	db 1
	dw SailorItems12Exit_0
	begin_exits "SailorItems12"
	exit 7, 31, 8, 31, 0, SAILOR, ITEMS, 11, 112, 8, DOWN
	end_exits

SailorBossExitTables:
	dw SailorBoss0ExitTable
SailorBoss0ExitTable:
	db 0

CossackHubExitTables:
	dw CossackHub0ExitTable
CossackHub0ExitTable:
	db 5
	dw CossackHub0Exit_0
	dw CossackHub0Exit_1
	dw CossackHub0Exit_2
	dw CossackHub0Exit_3
	dw CossackHub0Exit_4
	begin_exits "CossackHub0"
	exit 11, 0, 12, 0, 0, COSSACK, HERB, 0, 128, 240, UP
	exit 6, 5, 7, 5, 0, COSSACK, MINES, 0, 152, 240, UP
	exit 31, 19, 31, 20, 0, COSSACK, SNOWMAN, 0, 8, 208, RIGHT
	exit 27, 3, 28, 3, 0, COSSACK, BOSS, 0, 64, 96, UP
	exit 13, 15, 14, 15, 1, COSSACK, 3, 112, 128
	end_exits

CossackHerbExitTables:
	dw CossackHerb0ExitTable
	dw CossackHerb1ExitTable
	dw CossackHerb2ExitTable
	dw CossackHerb3ExitTable
	dw CossackHerb4ExitTable
	dw CossackHerb5ExitTable
	dw CossackHerb6ExitTable
	dw CossackHerb7ExitTable
	dw CossackHerb8ExitTable
	dw CossackHerb9ExitTable
CossackHerb0ExitTable:
	db 2
	dw CossackHerb0Exit_0
	dw CossackHerb0Exit_1
	begin_exits "CossackHerb0"
	exit 15, 31, 16, 31, 0, COSSACK, HUB, 0, 96, 8, DOWN
	exit 27, 0, 28, 0, 0, COSSACK, HERB, 7, 128, 240, UP
	end_exits
CossackHerb1ExitTable:
	db 4
	dw CossackHerb1Exit_0
	dw CossackHerb1Exit_1
	dw CossackHerb1Exit_2
	dw CossackHerb1Exit_3
	begin_exits "CossackHerb1"
	exit 2, 0, 3, 0, 0, COSSACK, HERB, 2, 24, 240, UP
	exit 28, 31, 29, 31, 0, COSSACK, HERB, 7, 128, 8, DOWN
	exit 0, 21, 0, 22, 0, COSSACK, HERB, 3, 240, 208, LEFT
	exit 2, 17, 2, 17, 2, COSSACK, HERB, 5, 96, 40, DOWN
	end_exits
CossackHerb2ExitTable:
	db 2
	dw CossackHerb2Exit_0
	dw CossackHerb2Exit_1
	begin_exits "CossackHerb2"
	exit 2, 31, 3, 31, 0, COSSACK, HERB, 1, 24, 8, DOWN
	exit 26, 16, 26, 16, 3, COSSACK, HERB, 6, 128, 200, UP
	end_exits
CossackHerb3ExitTable:
	db 2
	dw CossackHerb3Exit_0
	dw CossackHerb3Exit_1
	begin_exits "CossackHerb3"
	exit 14, 0, 15, 0, 0, COSSACK, HERB, 4, 120, 240, UP
	exit 31, 25, 31, 26, 0, COSSACK, HERB, 1, 8, 176, RIGHT
	end_exits
CossackHerb4ExitTable:
	db 2
	dw CossackHerb4Exit_0
	dw CossackHerb4Exit_1
	begin_exits "CossackHerb4"
	exit 14, 31, 15, 31, 0, COSSACK, HERB, 3, 120, 8, DOWN
	exit 6, 0, 7, 0, 0, COSSACK, HERB, 8, 120, 240, UP
	end_exits
CossackHerb5ExitTable:
	db 1
	dw CossackHerb5Exit_0
	begin_exits "CossackHerb5"
	exit 3, 12, 3, 12, 2, COSSACK, HERB, 1, 24, 152, DOWN
	end_exits
CossackHerb6ExitTable:
	db 0
CossackHerb7ExitTable:
	db 2
	dw CossackHerb7Exit_0
	dw CossackHerb7Exit_1
	begin_exits "CossackHerb7"
	exit 15, 31, 16, 31, 0, COSSACK, HERB, 0, 224, 8, DOWN
	exit 15, 0, 16, 0, 0, COSSACK, HERB, 1, 232, 240, UP
	end_exits
CossackHerb8ExitTable:
	db 2
	dw CossackHerb8Exit_0
	dw CossackHerb8Exit_1
	begin_exits "CossackHerb8"
	exit 14, 31, 15, 31, 0, COSSACK, HERB, 4, 56, 8, UP
	exit 12, 0, 13, 0, 0, COSSACK, HERB, 9, 120, 240, UP
	end_exits
CossackHerb9ExitTable:
	db 1
	dw CossackHerb9Exit_0
	begin_exits "CossackHerb9"
	exit 14, 31, 15, 31, 0, COSSACK, HERB, 8, 104, 8, DOWN
	end_exits

CossackMinesExitTables:
	dw CossackMines0ExitTable
	dw CossackMines1ExitTable
	dw CossackMines2ExitTable
	dw CossackMines3ExitTable
	dw CossackMines4ExitTable
	dw CossackMines5ExitTable
	dw CossackMines6ExitTable
	dw CossackMines7ExitTable
	dw CossackMines8ExitTable
	dw CossackMines9ExitTable
	dw CossackMines10ExitTable
CossackMines0ExitTable:
	db 2
	dw CossackMines0Exit_0
	dw CossackMines0Exit_1
	begin_exits "CossackMines0"
	exit 18, 31, 19, 31, 0, COSSACK, HUB, 0, 56, 49, DOWN
	exit 15, 0, 16, 0, 0, COSSACK, MINES, 8, 72, 240, UP
	end_exits
CossackMines1ExitTable:
	db 4
	dw CossackMines1Exit_0
	dw CossackMines1Exit_1
	dw CossackMines1Exit_2
	dw CossackMines1Exit_3
	begin_exits "CossackMines1"
	exit 15, 31, 16, 31, 0, COSSACK, MINES, 8, 176, 8, DOWN
	exit 24, 0, 25, 0, 0, COSSACK, MINES, 2, 208, 240, UP
	exit 31, 6, 31, 7, 0, COSSACK, MINES, 4, 8, 208, RIGHT
	exit 29, 16, 29, 16, 3, COSSACK, MINES, 7, 128, 208, UP
	end_exits
CossackMines2ExitTable:
	db 3
	dw CossackMines2Exit_0
	dw CossackMines2Exit_1
	dw CossackMines2Exit_2
	begin_exits "CossackMines2"
	exit 25, 31, 26, 31, 0, COSSACK, MINES, 1, 200, 8, DOWN
	exit 31, 23, 31, 24, 0, COSSACK, MINES, 4, 8, 96, RIGHT
	exit 6, 0, 7, 0, 0, COSSACK, MINES, 9, 104, 240, UP
	end_exits
CossackMines3ExitTable:
	db 1
	dw CossackMines3Exit_0
	begin_exits "CossackMines3"
	exit 0, 27, 0, 28, 0, COSSACK, MINES, 4, 240, 224, LEFT
	end_exits
CossackMines4ExitTable:
	db 5
	dw CossackMines4Exit_0
	dw CossackMines4Exit_1
	dw CossackMines4Exit_2
	dw CossackMines4Exit_3
	dw CossackMines4Exit_4
	begin_exits "CossackMines4"
	exit 31, 27, 31, 28, 0, COSSACK, MINES, 3, 8, 224, RIGHT
	exit 18, 0, 19, 0, 0, COSSACK, MINES, 5, 152, 240, UP
	exit 0, 11, 0, 12, 0, COSSACK, MINES, 2, 240, 192, LEFT
	exit 0, 25, 0, 26, 0, COSSACK, MINES, 1, 240, 56, LEFT
	exit 11, 25, 11, 25, 2, COSSACK, MINES, 6, 32, 88, UP
	end_exits
CossackMines5ExitTable:
	db 1
	dw CossackMines5Exit_0
	begin_exits "CossackMines5"
	exit 18, 31, 19, 31, 0, COSSACK, MINES, 4, 152, 8, DOWN
	end_exits
CossackMines6ExitTable:
	db 1
	dw CossackMines6Exit_0
	begin_exits "CossackMines6"
	exit 9, 4, 9, 4, 2, COSSACK, MINES, 4, 88, 208, UP
	end_exits
CossackMines7ExitTable:
	db 0
CossackMines8ExitTable:
	db 2
	dw CossackMines8Exit_0
	dw CossackMines8Exit_1
	begin_exits "CossackMines8"
	exit 8, 31, 9, 31, 0, COSSACK, MINES, 0, 128, 8, DOWN
	exit 21, 0, 22, 0, 0, COSSACK, MINES, 1, 128, 232, UP
	end_exits
CossackMines9ExitTable:
	db 3
	dw CossackMines9Exit_0
	dw CossackMines9Exit_1
	dw CossackMines9Exit_2
	begin_exits "CossackMines9"
	exit 12, 31, 13, 31, 0, COSSACK, MINES, 2, 56, 8, DOWN
	exit 24, 0, 25, 0, 0, COSSACK, MINES, 10, 216, 232, UP
	exit 5, 0, 6, 0, 0, COSSACK, MINES, 10, 40, 232, UP
	end_exits
CossackMines10ExitTable:
	db 2
	dw CossackMines10Exit_0
	dw CossackMines10Exit_1
	begin_exits "CossackMines10"
	exit 26, 30, 27, 30, 0, COSSACK, MINES, 9, 200, 8, DOWN
	exit 4, 30, 5, 30, 0, COSSACK, MINES, 9, 48, 8, DOWN
	end_exits

CossackSnowmanExitTables:
	dw CossackSnowman0ExitTable
	dw CossackSnowman1ExitTable
	dw CossackSnowman2ExitTable
	dw CossackSnowman3ExitTable
	dw CossackSnowman4ExitTable
	dw CossackSnowman5ExitTable
	dw CossackSnowman6ExitTable
	dw CossackSnowman7ExitTable
	dw CossackSnowman8ExitTable
	dw CossackSnowman9ExitTable
	dw CossackSnowman10ExitTable
	dw CossackSnowman11ExitTable
	dw CossackSnowman12ExitTable
	dw CossackSnowman13ExitTable
CossackSnowman0ExitTable:
	db 3
	dw CossackSnowman0Exit_0
	dw CossackSnowman0Exit_1
	dw CossackSnowman0Exit_2
	begin_exits "CossackSnowman0"
	exit 0, 25, 0, 26, 0, COSSACK, HUB, 0, 240, 160, LEFT
	exit 13, 0, 14, 0, 0, COSSACK, SNOWMAN, 12, 112, 240, UP
	exit 29, 7, 29, 7, 2, COSSACK, SNOWMAN, 6, 24, 48, RIGHT
	end_exits
CossackSnowman1ExitTable:
	db 2
	dw CossackSnowman1Exit_0
	dw CossackSnowman1Exit_1
	begin_exits "CossackSnowman1"
	exit 13, 31, 14, 31, 0, COSSACK, SNOWMAN, 12, 112, 8, DOWN
	exit 20, 0, 21, 0, 0, COSSACK, SNOWMAN, 2, 64, 112, UP
	end_exits
CossackSnowman2ExitTable:
	db 4
	dw CossackSnowman2Exit_0
	dw CossackSnowman2Exit_1
	dw CossackSnowman2Exit_2
	dw CossackSnowman2Exit_3
	begin_exits "CossackSnowman2"
	exit 7, 15, 8, 15, 0, COSSACK, SNOWMAN, 1, 168, 8, DOWN
	exit 6, 0, 7, 0, 0, COSSACK, SNOWMAN, 2, 64, 112, UP
	exit 0, 7, 0, 8, 0, COSSACK, SNOWMAN, 8, 112, 64, LEFT
	exit 15, 7, 15, 8, 0, COSSACK, SNOWMAN, 2, 8, 64, RIGHT
	end_exits
CossackSnowman3ExitTable:
	db 3
	dw CossackSnowman3Exit_0
	dw CossackSnowman3Exit_1
	dw CossackSnowman3Exit_2
	begin_exits "CossackSnowman3"
	exit 14, 0, 15, 0, 0, COSSACK, SNOWMAN, 2, 64, 112, DOWN
	exit 11, 31, 12, 31, 0, COSSACK, SNOWMAN, 4, 96, 8, DOWN
	exit 22, 31, 23, 31, 0, COSSACK, SNOWMAN, 4, 184, 8, DOWN
	end_exits
CossackSnowman4ExitTable:
	db 3
	dw CossackSnowman4Exit_0
	dw CossackSnowman4Exit_1
	dw CossackSnowman4Exit_2
	begin_exits "CossackSnowman4"
	exit 11, 0, 12, 0, 0, COSSACK, SNOWMAN, 3, 96, 240, UP
	exit 22, 0, 23, 0, 0, COSSACK, SNOWMAN, 3, 184, 240, UP
	exit 6, 31, 7, 31, 0, COSSACK, SNOWMAN, 5, 56, 8, DOWN
	end_exits
CossackSnowman5ExitTable:
	db 2
	dw CossackSnowman5Exit_0
	dw CossackSnowman5Exit_1
	begin_exits "CossackSnowman5"
	exit 6, 0, 7, 0, 0, COSSACK, SNOWMAN, 4, 56, 240, UP
	exit 3, 21, 3, 21, 3, COSSACK, SNOWMAN, 7, 128, 200, UP
	end_exits
CossackSnowman6ExitTable:
	db 1
	dw CossackSnowman6Exit_0
	begin_exits "CossackSnowman6"
	exit 13, 9, 13, 9, 2, COSSACK, SNOWMAN, 0, 232, 64, DOWN
	end_exits
CossackSnowman7ExitTable:
	db 0
CossackSnowman8ExitTable:
	db 4
	dw CossackSnowman8Exit_0
	dw CossackSnowman8Exit_1
	dw CossackSnowman8Exit_2
	dw CossackSnowman8Exit_3
	begin_exits "CossackSnowman8"
	exit 7, 15, 8, 15, 0, COSSACK, SNOWMAN, 2, 56, 8, DOWN
	exit 6, 0, 7, 0, 0, COSSACK, SNOWMAN, 9, 64, 112, UP
	exit 0, 7, 0, 8, 0, COSSACK, SNOWMAN, 2, 112, 64, LEFT
	exit 15, 7, 15, 8, 0, COSSACK, SNOWMAN, 2, 8, 64, RIGHT
	end_exits
CossackSnowman9ExitTable:
	db 4
	dw CossackSnowman9Exit_0
	dw CossackSnowman9Exit_1
	dw CossackSnowman9Exit_2
	dw CossackSnowman9Exit_3
	begin_exits "CossackSnowman9"
	exit 7, 15, 8, 15, 0, COSSACK, SNOWMAN, 8, 56, 8, DOWN
	exit 6, 0, 7, 0, 0, COSSACK, SNOWMAN, 10, 64, 112, UP
	exit 0, 7, 0, 8, 0, COSSACK, SNOWMAN, 2, 112, 64, LEFT
	exit 15, 7, 15, 8, 0, COSSACK, SNOWMAN, 2, 8, 64, RIGHT
	end_exits
CossackSnowman10ExitTable:
	db 4
	dw CossackSnowman10Exit_0
	dw CossackSnowman10Exit_1
	dw CossackSnowman10Exit_2
	dw CossackSnowman10Exit_3
	begin_exits "CossackSnowman10"
	exit 7, 15, 8, 15, 0, COSSACK, SNOWMAN, 9, 64, 8, DOWN
	exit 6, 0, 7, 0, 0, COSSACK, SNOWMAN, 2, 64, 112, UP
	exit 0, 7, 0, 8, 0, COSSACK, SNOWMAN, 2, 112, 64, LEFT
	exit 15, 7, 15, 8, 0, COSSACK, SNOWMAN, 11, 8, 64, RIGHT
	end_exits
CossackSnowman11ExitTable:
	db 4
	dw CossackSnowman11Exit_0
	dw CossackSnowman11Exit_1
	dw CossackSnowman11Exit_2
	dw CossackSnowman11Exit_3
	begin_exits "CossackSnowman11"
	exit 7, 15, 8, 15, 0, COSSACK, SNOWMAN, 3, 120, 8, DOWN
	exit 6, 0, 7, 0, 0, COSSACK, SNOWMAN, 2, 64, 112, UP
	exit 0, 7, 0, 8, 0, COSSACK, SNOWMAN, 2, 112, 64, LEFT
	exit 15, 7, 15, 8, 0, COSSACK, SNOWMAN, 2, 8, 64, RIGHT
	end_exits
CossackSnowman12ExitTable:
	db 3
	dw CossackSnowman12Exit_0
	dw CossackSnowman12Exit_1
	dw CossackSnowman12Exit_2
	begin_exits "CossackSnowman12"
	exit 13, 31, 14, 31, 0, COSSACK, SNOWMAN, 0, 112, 8, DOWN
	exit 13, 0, 14, 0, 0, COSSACK, SNOWMAN, 1, 112, 240, UP
	exit 4, 0, 5, 0, 0, COSSACK, SNOWMAN, 13, 40, 240, UP
	end_exits
CossackSnowman13ExitTable:
	db 1
	dw CossackSnowman13Exit_0
	begin_exits "CossackSnowman13"
	exit 4, 31, 5, 31, 0, COSSACK, SNOWMAN, 12, 40, 8, DOWN
	end_exits

CossackBossExitTables:
	dw CossackBoss0ExitTable
CossackBoss0ExitTable:
	db 0

CavemanHubExitTables:
	dw CavemanHub0ExitTable
CavemanHub0ExitTable:
	db 5
	dw CavemanHub0Exit_0
	dw CavemanHub0Exit_1
	dw CavemanHub0Exit_2
	dw CavemanHub0Exit_3
	dw CavemanHub0Exit_4
	begin_exits "CavemanHub0"
	exit 7, 4, 8, 4, 0, CAVEMAN, ROBO, 0, 152, 240, UP
	exit 25, 5, 26, 5, 0, CAVEMAN, GEARS, 0, 56, 240, UP
	exit 31, 22, 31, 23, 0, CAVEMAN, WATER, 0, 8, 208, RIGHT
	exit 17, 0, 18, 0, 0, CAVEMAN, BOSS, 0, 64, 64, UP
	exit 12, 22, 13, 22, 1, CAVEMAN, 3, 104, 184
	end_exits

CavemanRoboExitTables:
	dw CavemanRobo0ExitTable
	dw CavemanRobo1ExitTable
	dw CavemanRobo2ExitTable
	dw CavemanRobo3ExitTable
	dw CavemanRobo4ExitTable
	dw CavemanRobo5ExitTable
	dw CavemanRobo6ExitTable
	dw CavemanRobo7ExitTable
	dw CavemanRobo8ExitTable
	dw CavemanRobo9ExitTable
	dw CavemanRobo10ExitTable
	dw CavemanRobo11ExitTable
	dw CavemanRobo12ExitTable
	dw CavemanRobo13ExitTable
	dw CavemanRobo14ExitTable
CavemanRobo0ExitTable:
	db 3
	dw CavemanRobo0Exit_0
	dw CavemanRobo0Exit_1
	dw CavemanRobo0Exit_2
	begin_exits "CavemanRobo0"
	exit 18, 31, 19, 31, 0, CAVEMAN, HUB, 0, 64, 41, DOWN
	exit 20, 0, 21, 0, 0, CAVEMAN, ROBO, 2, 72, 240, UP
	exit 7, 5, 7, 5, 2, CAVEMAN, ROBO, 6, 96, 72, RIGHT
	end_exits
CavemanRobo1ExitTable:
	db 3
	dw CavemanRobo1Exit_0
	dw CavemanRobo1Exit_1
	dw CavemanRobo1Exit_2
	begin_exits "CavemanRobo1"
	exit 31, 19, 31, 20, 0, CAVEMAN, ROBO, 2, 8, 72, RIGHT
	exit 28, 9, 28, 9, 3, CAVEMAN, ROBO, 7, 128, 208, UP
	exit 3, 0, 4, 0, 0, CAVEMAN, ROBO, 13, 224, 240, UP
	end_exits
CavemanRobo2ExitTable:
	db 3
	dw CavemanRobo2Exit_0
	dw CavemanRobo2Exit_1
	dw CavemanRobo2Exit_2
	begin_exits "CavemanRobo2"
	exit 8, 31, 9, 31, 0, CAVEMAN, ROBO, 0, 168, 8, DOWN
	exit 23, 0, 24, 0, 0, CAVEMAN, ROBO, 3, 208, 240, UP
	exit 0, 8, 0, 9, 0, CAVEMAN, ROBO, 1, 240, 160, LEFT
	end_exits
CavemanRobo3ExitTable:
	db 2
	dw CavemanRobo3Exit_0
	dw CavemanRobo3Exit_1
	begin_exits "CavemanRobo3"
	exit 25, 31, 26, 31, 0, CAVEMAN, ROBO, 2, 192, 8, DOWN
	exit 24, 0, 25, 0, 0, CAVEMAN, ROBO, 4, 64, 112, UP
	end_exits
CavemanRobo4ExitTable:
	db 4
	dw CavemanRobo4Exit_0
	dw CavemanRobo4Exit_1
	dw CavemanRobo4Exit_2
	dw CavemanRobo4Exit_3
	begin_exits "CavemanRobo4"
	exit 7, 15, 8, 15, 0, CAVEMAN, ROBO, 3, 200, 8, DOWN
	exit 7, 0, 8, 0, 0, CAVEMAN, ROBO, 4, 64, 112, UP
	exit 0, 6, 0, 7, 0, CAVEMAN, ROBO, 4, 112, 56, LEFT
	exit 15, 6, 15, 7, 0, CAVEMAN, ROBO, 8, 8, 56, RIGHT
	end_exits
CavemanRobo5ExitTable:
	db 1
	dw CavemanRobo5Exit_0
	begin_exits "CavemanRobo5"
	exit 15, 31, 16, 31, 0, CAVEMAN, ROBO, 11, 64, 8, DOWN
	end_exits
CavemanRobo6ExitTable:
	db 1
	dw CavemanRobo6Exit_0
	begin_exits "CavemanRobo6"
	exit 13, 12, 13, 12, 2, CAVEMAN, ROBO, 0, 60, 48, DOWN
	end_exits
CavemanRobo7ExitTable:
	db 0
CavemanRobo8ExitTable:
	db 4
	dw CavemanRobo8Exit_0
	dw CavemanRobo8Exit_1
	dw CavemanRobo8Exit_2
	dw CavemanRobo8Exit_3
	begin_exits "CavemanRobo8"
	exit 7, 15, 8, 15, 0, CAVEMAN, ROBO, 9, 64, 8, DOWN
	exit 7, 0, 8, 0, 0, CAVEMAN, ROBO, 4, 64, 112, UP
	exit 0, 6, 0, 7, 0, CAVEMAN, ROBO, 4, 112, 56, LEFT
	exit 15, 6, 15, 7, 0, CAVEMAN, ROBO, 4, 8, 56, RIGHT
	end_exits
CavemanRobo9ExitTable:
	db 4
	dw CavemanRobo9Exit_0
	dw CavemanRobo9Exit_1
	dw CavemanRobo9Exit_2
	dw CavemanRobo9Exit_3
	begin_exits "CavemanRobo9"
	exit 7, 15, 8, 15, 0, CAVEMAN, ROBO, 10, 64, 8, DOWN
	exit 7, 0, 8, 0, 0, CAVEMAN, ROBO, 4, 64, 112, UP
	exit 0, 6, 0, 7, 0, CAVEMAN, ROBO, 4, 112, 56, LEFT
	exit 15, 6, 15, 7, 0, CAVEMAN, ROBO, 4, 8, 56, RIGHT
	end_exits
CavemanRobo10ExitTable:
	db 4
	dw CavemanRobo10Exit_0
	dw CavemanRobo10Exit_1
	dw CavemanRobo10Exit_2
	dw CavemanRobo10Exit_3
	begin_exits "CavemanRobo10"
	exit 7, 15, 8, 15, 0, CAVEMAN, ROBO, 4, 64, 8, DOWN
	exit 7, 0, 8, 0, 0, CAVEMAN, ROBO, 4, 64, 112, UP
	exit 0, 6, 0, 7, 0, CAVEMAN, ROBO, 11, 112, 56, LEFT
	exit 15, 6, 15, 7, 0, CAVEMAN, ROBO, 4, 8, 56, RIGHT
	end_exits
CavemanRobo11ExitTable:
	db 4
	dw CavemanRobo11Exit_0
	dw CavemanRobo11Exit_1
	dw CavemanRobo11Exit_2
	dw CavemanRobo11Exit_3
	begin_exits "CavemanRobo11"
	exit 7, 15, 8, 15, 0, CAVEMAN, ROBO, 4, 64, 8, DOWN
	exit 7, 0, 8, 0, 0, CAVEMAN, ROBO, 5, 128, 240, UP
	exit 0, 6, 0, 7, 0, CAVEMAN, ROBO, 4, 112, 56, LEFT
	exit 15, 6, 15, 7, 0, CAVEMAN, ROBO, 4, 8, 56, RIGHT
	end_exits
CavemanRobo12ExitTable:
	db 4
	dw CavemanRobo12Exit_0
	dw CavemanRobo12Exit_1
	dw CavemanRobo12Exit_2
	dw CavemanRobo12Exit_3
	begin_exits "CavemanRobo12"
	exit 7, 15, 8, 15, 0, CAVEMAN, ROBO, 3, 200, 8, DOWN
	exit 7, 0, 8, 0, 0, CAVEMAN, ROBO, 5, 128, 240, UP
	exit 0, 6, 0, 7, 0, CAVEMAN, ROBO, 4, 112, 56, LEFT
	exit 15, 6, 15, 7, 0, CAVEMAN, ROBO, 4, 8, 56, RIGHT
	end_exits
CavemanRobo13ExitTable:
	db 2
	dw CavemanRobo13Exit_0
	dw CavemanRobo13Exit_1
	begin_exits "CavemanRobo13"
	exit 27, 31, 28, 31, 0, CAVEMAN, ROBO, 1, 32, 8, DOWN
	exit 0, 3, 0, 4, 0, CAVEMAN, ROBO, 14, 240, 32, LEFT
	end_exits
CavemanRobo14ExitTable:
	db 1
	dw CavemanRobo14Exit_0
	begin_exits "CavemanRobo14"
	exit 31, 3, 31, 4, 0, CAVEMAN, ROBO, 13, 8, 32, RIGHT
	end_exits

CavemanGearsExitTables:
	dw CavemanGears0ExitTable
	dw CavemanGears1ExitTable
	dw CavemanGears2ExitTable
	dw CavemanGears3ExitTable
	dw CavemanGears4ExitTable
	dw CavemanGears5ExitTable
	dw CavemanGears6ExitTable
	dw CavemanGears7ExitTable
	dw CavemanGears8ExitTable
	dw CavemanGears9ExitTable
	dw CavemanGears10ExitTable
	dw CavemanGears11ExitTable
	dw CavemanGears12ExitTable
	dw CavemanGears13ExitTable
CavemanGears0ExitTable:
	db 5
	dw CavemanGears0Exit_0
	dw CavemanGears0Exit_1
	dw CavemanGears0Exit_2
	dw CavemanGears0Exit_3
	dw CavemanGears0Exit_4
	begin_exits "CavemanGears0"
	exit 6, 31, 7, 31, 0, CAVEMAN, HUB, 0, 208, 49, DOWN
	exit 0, 6, 0, 7, 0, CAVEMAN, GEARS, 4, 240, 208, LEFT
	exit 13, 0, 14, 0, 0, CAVEMAN, GEARS, 1, 64, 112, UP
	exit 31, 24, 31, 25, 0, CAVEMAN, GEARS, 2, 8, 112, RIGHT
	exit 28, 10, 28, 10, 3, CAVEMAN, GEARS, 7, 128, 208, UP
	end_exits
CavemanGears1ExitTable:
	db 4
	dw CavemanGears1Exit_0
	dw CavemanGears1Exit_1
	dw CavemanGears1Exit_2
	dw CavemanGears1Exit_3
	begin_exits "CavemanGears1"
	exit 7, 15, 8, 15, 0, CAVEMAN, GEARS, 0, 112, 16, DOWN
	exit 7, 0, 8, 0, 0, CAVEMAN, GEARS, 1, 64, 112, UP
	exit 0, 6, 0, 7, 0, CAVEMAN, GEARS, 1, 112, 56, LEFT
	exit 15, 6, 15, 7, 0, CAVEMAN, GEARS, 8, 8, 56, RIGHT
	end_exits
CavemanGears2ExitTable:
	db 4
	dw CavemanGears2Exit_0
	dw CavemanGears2Exit_1
	dw CavemanGears2Exit_2
	dw CavemanGears2Exit_3
	begin_exits "CavemanGears2"
	exit 0, 13, 0, 14, 0, CAVEMAN, GEARS, 0, 240, 200, LEFT
	exit 31, 22, 31, 23, 0, CAVEMAN, GEARS, 3, 8, 176, RIGHT
	exit 22, 4, 22, 4, 2, CAVEMAN, GEARS, 6, 96, 40, DOWN
	exit 26, 0, 27, 0, 0, CAVEMAN, GEARS, 12, 216, 240, UP
	end_exits
CavemanGears3ExitTable:
	db 1
	dw CavemanGears3Exit_0
	begin_exits "CavemanGears3"
	exit 0, 21, 0, 22, 0, CAVEMAN, GEARS, 2, 240, 184, LEFT
	end_exits
CavemanGears4ExitTable:
	db 1
	dw CavemanGears4Exit_0
	begin_exits "CavemanGears4"
	exit 31, 25, 31, 26, 0, CAVEMAN, GEARS, 0, 8, 56, RIGHT
	end_exits
CavemanGears5ExitTable:
	db 1
	dw CavemanGears5Exit_0
	begin_exits "CavemanGears5"
	exit 14, 30, 15, 30, 0, CAVEMAN, GEARS, 11, 64, 8, DOWN
	end_exits
CavemanGears6ExitTable:
	db 1
	dw CavemanGears6Exit_0
	begin_exits "CavemanGears6"
	exit 3, 12, 3, 12, 2, CAVEMAN, GEARS, 2, 176, 40, DOWN
	end_exits
CavemanGears7ExitTable:
	db 0
CavemanGears8ExitTable:
	db 4
	dw CavemanGears8Exit_0
	dw CavemanGears8Exit_1
	dw CavemanGears8Exit_2
	dw CavemanGears8Exit_3
	begin_exits "CavemanGears8"
	exit 7, 15, 8, 15, 0, CAVEMAN, GEARS, 1, 64, 8, DOWN
	exit 7, 0, 8, 0, 0, CAVEMAN, GEARS, 1, 64, 112, UP
	exit 0, 6, 0, 7, 0, CAVEMAN, GEARS, 1, 112, 56, LEFT
	exit 15, 6, 15, 7, 0, CAVEMAN, GEARS, 9, 8, 56, RIGHT
	end_exits
CavemanGears9ExitTable:
	db 4
	dw CavemanGears9Exit_0
	dw CavemanGears9Exit_1
	dw CavemanGears9Exit_2
	dw CavemanGears9Exit_3
	begin_exits "CavemanGears9"
	exit 7, 15, 8, 15, 0, CAVEMAN, GEARS, 1, 64, 8, DOWN
	exit 7, 0, 8, 0, 0, CAVEMAN, GEARS, 10, 64, 112, UP
	exit 0, 6, 0, 7, 0, CAVEMAN, GEARS, 1, 112, 56, LEFT
	exit 15, 6, 15, 7, 0, CAVEMAN, GEARS, 1, 8, 56, RIGHT
	end_exits
CavemanGears10ExitTable:
	db 4
	dw CavemanGears10Exit_0
	dw CavemanGears10Exit_1
	dw CavemanGears10Exit_2
	dw CavemanGears10Exit_3
	begin_exits "CavemanGears10"
	exit 7, 15, 8, 15, 0, CAVEMAN, GEARS, 1, 64, 8, DOWN
	exit 7, 0, 8, 0, 0, CAVEMAN, GEARS, 1, 64, 112, UP
	exit 0, 6, 0, 7, 0, CAVEMAN, GEARS, 1, 112, 56, LEFT
	exit 15, 6, 15, 7, 0, CAVEMAN, GEARS, 11, 8, 56, RIGHT
	end_exits
CavemanGears11ExitTable:
	db 4
	dw CavemanGears11Exit_0
	dw CavemanGears11Exit_1
	dw CavemanGears11Exit_2
	dw CavemanGears11Exit_3
	begin_exits "CavemanGears11"
	exit 7, 15, 8, 15, 0, CAVEMAN, GEARS, 1, 64, 8, DOWN
	exit 7, 0, 8, 0, 0, CAVEMAN, GEARS, 5, 120, 232, UP
	exit 0, 6, 0, 7, 0, CAVEMAN, GEARS, 1, 112, 56, LEFT
	exit 15, 6, 15, 7, 0, CAVEMAN, GEARS, 1, 8, 56, RIGHT
	end_exits
CavemanGears12ExitTable:
	db 2
	dw CavemanGears12Exit_0
	dw CavemanGears12Exit_1
	begin_exits "CavemanGears12"
	exit 26, 31, 27, 31, 0, CAVEMAN, GEARS, 2, 216, 8, DOWN
	exit 18, 0, 19, 0, 0, CAVEMAN, GEARS, 13, 144, 240, UP
	end_exits
CavemanGears13ExitTable:
	db 1
	dw CavemanGears13Exit_0
	begin_exits "CavemanGears13"
	exit 17, 31, 18, 31, 0, CAVEMAN, GEARS, 12, 152, 8, DOWN
	end_exits

CavemanWaterExitTables:
	dw CavemanWater0ExitTable
	dw CavemanWater1ExitTable
	dw CavemanWater2ExitTable
	dw CavemanWater3ExitTable
	dw CavemanWater4ExitTable
	dw CavemanWater5ExitTable
	dw CavemanWater6ExitTable
	dw CavemanWater7ExitTable
	dw CavemanWater8ExitTable
	dw CavemanWater9ExitTable
	dw CavemanWater10ExitTable
	dw CavemanWater11ExitTable
CavemanWater0ExitTable:
	db 3
	dw CavemanWater0Exit_0
	dw CavemanWater0Exit_1
	dw CavemanWater0Exit_2
	begin_exits "CavemanWater0"
	exit 0, 25, 0, 26, 0, CAVEMAN, HUB, 0, 240, 184, LEFT
	exit 3, 0, 4, 0, 0, CAVEMAN, WATER, 1, 32, 240, UP
	exit 27, 0, 28, 0, 0, CAVEMAN, WATER, 1, 224, 240, UP
	end_exits
CavemanWater1ExitTable:
	db 6
	dw CavemanWater1Exit_0
	dw CavemanWater1Exit_1
	dw CavemanWater1Exit_2
	dw CavemanWater1Exit_3
	dw CavemanWater1Exit_4
	dw CavemanWater1Exit_5
	begin_exits "CavemanWater1"
	exit 3, 31, 4, 31, 0, CAVEMAN, WATER, 0, 32, 8, DOWN
	exit 27, 31, 28, 31, 0, CAVEMAN, WATER, 0, 224, 8, DOWN
	exit 8, 0, 9, 0, 0, CAVEMAN, WATER, 3, 96, 240, UP
	exit 31, 7, 31, 8, 0, CAVEMAN, WATER, 2, 8, 64, RIGHT
	exit 24, 13, 24, 13, 3, CAVEMAN, WATER, 7, 56, 200, UP
	exit 13, 31, 14, 31, 0, CAVEMAN, WATER, 9, 192, 40, DOWN
	end_exits
CavemanWater2ExitTable:
	db 3
	dw CavemanWater2Exit_0
	dw CavemanWater2Exit_1
	dw CavemanWater2Exit_2
	begin_exits "CavemanWater2"
	exit 0, 7, 0, 8, 0, CAVEMAN, WATER, 1, 240, 64, LEFT
	exit 11, 0, 12, 0, 0, CAVEMAN, WATER, 4, 96, 240, UP
	exit 27, 0, 28, 0, 0, CAVEMAN, WATER, 9, 72, 240, UP
	end_exits
CavemanWater3ExitTable:
	db 4
	dw CavemanWater3Exit_0
	dw CavemanWater3Exit_1
	dw CavemanWater3Exit_2
	dw CavemanWater3Exit_3
	begin_exits "CavemanWater3"
	exit 11, 31, 12, 31, 0, CAVEMAN, WATER, 1, 72, 8, DOWN
	exit 31, 26, 31, 27, 0, CAVEMAN, WATER, 4, 8, 216, RIGHT
	exit 27, 11, 27, 11, 2, CAVEMAN, WATER, 6, 32, 40, DOWN
	exit 22, 0, 23, 0, 0, CAVEMAN, WATER, 11, 184, 240, UP
	end_exits
CavemanWater4ExitTable:
	db 4
	dw CavemanWater4Exit_0
	dw CavemanWater4Exit_1
	dw CavemanWater4Exit_2
	dw CavemanWater4Exit_3
	begin_exits "CavemanWater4"
	exit 0, 26, 0, 27, 0, CAVEMAN, WATER, 3, 240, 216, LEFT
	exit 11, 31, 12, 31, 0, CAVEMAN, WATER, 2, 96, 8, DOWN
	exit 16, 0, 17, 0, 0, CAVEMAN, WATER, 5, 136, 240, UP
	exit 2, 0, 3, 0, 0, CAVEMAN, WATER, 9, 200, 240, UP
	end_exits
CavemanWater5ExitTable:
	db 2
	dw CavemanWater5Exit_0
	dw CavemanWater5Exit_1
	begin_exits "CavemanWater5"
	exit 16, 31, 17, 31, 0, CAVEMAN, WATER, 4, 136, 8, DOWN
	exit 7, 31, 8, 31, 0, CAVEMAN, WATER, 9, 136, 40, DOWN
	end_exits
CavemanWater6ExitTable:
	db 1
	dw CavemanWater6Exit_0
	begin_exits "CavemanWater6"
	exit 3, 12, 3, 12, 2, CAVEMAN, WATER, 3, 216, 96, DOWN
	end_exits
CavemanWater7ExitTable:
	db 0
CavemanWater8ExitTable:
	db 3
	dw CavemanWater8Exit_0
	dw CavemanWater8Exit_1
	dw CavemanWater8Exit_2
	begin_exits "CavemanWater8"
	exit 0, 7, 0, 8, 0, CAVEMAN, WATER, 1, 240, 64, LEFT
	exit 11, 0, 12, 0, 0, CAVEMAN, WATER, 4, 96, 240, UP
	exit 27, 0, 28, 0, 0, CAVEMAN, WATER, 9, 72, 240, UP
	end_exits
CavemanWater9ExitTable:
	db 7
	dw CavemanWater9Exit_0
	dw CavemanWater9Exit_1
	dw CavemanWater9Exit_2
	dw CavemanWater9Exit_3
	dw CavemanWater9Exit_4
	dw CavemanWater9Exit_5
	dw CavemanWater9Exit_6
	begin_exits "CavemanWater9"
	exit 0, 5, 0, 6, 0, CAVEMAN, WATER, 11, 240, 48, LEFT
	exit 8, 4, 9, 4, 0, CAVEMAN, WATER, 11, 40, 240, UP
	exit 16, 4, 17, 4, 0, CAVEMAN, WATER, 5, 64, 240, UP
	exit 23, 4, 24, 4, 0, CAVEMAN, WATER, 1, 112, 240, UP
	exit 8, 31, 9, 31, 0, CAVEMAN, WATER, 2, 224, 8, DOWN
	exit 16, 31, 17, 31, 0, CAVEMAN, WATER, 10, 136, 8, DOWN
	exit 24, 31, 25, 31, 0, CAVEMAN, WATER, 4, 24, 8, DOWN
	end_exits
CavemanWater10ExitTable:
	db 1
	dw CavemanWater10Exit_0
	begin_exits "CavemanWater10"
	exit 16, 0, 17, 0, 0, CAVEMAN, WATER, 9, 136, 240, UP
	end_exits
CavemanWater11ExitTable:
	db 3
	dw CavemanWater11Exit_0
	dw CavemanWater11Exit_1
	dw CavemanWater11Exit_2
	begin_exits "CavemanWater11"
	exit 22, 31, 23, 31, 0, CAVEMAN, WATER, 3, 184, 8, DOWN
	exit 31, 5, 31, 6, 0, CAVEMAN, WATER, 9, 8, 48, RIGHT
	exit 4, 31, 5, 31, 0, CAVEMAN, WATER, 9, 72, 40, DOWN
	end_exits

CavemanBossExitTables:
	dw CavemanBoss0ExitTable
CavemanBoss0ExitTable:
	db 0

IncaHubExitTables:
	dw IncaHub0ExitTable
IncaHub0ExitTable:
	db 5
	dw IncaHub0Exit_0
	dw IncaHub0Exit_1
	dw IncaHub0Exit_2
	dw IncaHub0Exit_3
	dw IncaHub0Exit_4
	begin_exits "IncaHub0"
	exit 31, 20, 31, 21, 0, INCA, LETTER, 0, 8, 224, RIGHT
	exit 0, 20, 0, 21, 0, INCA, MAYOR, 0, 240, 200, LEFT
	exit 15, 0, 16, 0, 0, INCA, JEWEL, 1, 128, 240, UP
	exit 15, 23, 16, 23, 4, INCA, BOSS, 0, 64, 104, UP
	exit 15, 11, 16, 11, 1, INCA, 3, 128, 96
	end_exits

IncaLetterExitTables:
	dw IncaLetter0ExitTable
	dw IncaLetter1ExitTable
	dw IncaLetter2ExitTable
	dw IncaLetter3ExitTable
	dw IncaLetter4ExitTable
	dw IncaLetter5ExitTable
	dw IncaLetter6ExitTable
	dw IncaLetter7ExitTable
	dw IncaLetter8ExitTable
	dw IncaLetter9ExitTable
	dw IncaLetter10ExitTable
	dw IncaLetter11ExitTable
	dw IncaLetter12ExitTable
	dw IncaLetter13ExitTable
IncaLetter0ExitTable:
	db 3
	dw IncaLetter0Exit_0
	dw IncaLetter0Exit_1
	dw IncaLetter0Exit_2
	begin_exits "IncaLetter0"
	exit 0, 27, 0, 28, 0, INCA, HUB, 0, 240, 168, LEFT
	exit 21, 0, 22, 0, 0, INCA, LETTER, 1, 72, 240, UP
	exit 31, 25, 31, 26, 0, INCA, LETTER, 2, 8, 224, RIGHT
	end_exits
IncaLetter1ExitTable:
	db 4
	dw IncaLetter1Exit_0
	dw IncaLetter1Exit_1
	dw IncaLetter1Exit_2
	dw IncaLetter1Exit_3
	begin_exits "IncaLetter1"
	exit 8, 31, 9, 31, 0, INCA, LETTER, 0, 176, 8, DOWN
	exit 20, 0, 21, 0, 0, INCA, LETTER, 3, 72, 240, UP
	exit 0, 20, 0, 21, 0, INCA, LETTER, 8, 240, 112, LEFT
	exit 7, 0, 8, 0, 0, INCA, LETTER, 12, 56, 240, UP
	end_exits
IncaLetter2ExitTable:
	db 1
	dw IncaLetter2Exit_0
	begin_exits "IncaLetter2"
	exit 0, 27, 0, 28, 0, INCA, LETTER, 0, 240, 208, LEFT
	end_exits
IncaLetter3ExitTable:
	db 3
	dw IncaLetter3Exit_0
	dw IncaLetter3Exit_1
	dw IncaLetter3Exit_2
	begin_exits "IncaLetter3"
	exit 8, 31, 9, 31, 0, INCA, LETTER, 1, 168, 8, DOWN
	exit 31, 6, 31, 7, 0, INCA, LETTER, 4, 8, 216, RIGHT
	exit 29, 18, 29, 18, 2, INCA, LETTER, 6, 96, 40, DOWN
	end_exits
IncaLetter4ExitTable:
	db 2
	dw IncaLetter4Exit_0
	dw IncaLetter4Exit_1
	begin_exits "IncaLetter4"
	exit 0, 26, 0, 27, 0, INCA, LETTER, 3, 240, 56, LEFT
	exit 25, 0, 26, 0, 0, INCA, LETTER, 5, 40, 240, UP
	end_exits
IncaLetter5ExitTable:
	db 2
	dw IncaLetter5Exit_0
	dw IncaLetter5Exit_1
	begin_exits "IncaLetter5"
	exit 4, 31, 5, 31, 0, INCA, LETTER, 4, 208, 8, DOWN
	exit 27, 11, 27, 11, 3, INCA, LETTER, 7, 128, 208, UP
	end_exits
IncaLetter6ExitTable:
	db 1
	dw IncaLetter6Exit_0
	begin_exits "IncaLetter6"
	exit 2, 11, 2, 11, 2, INCA, LETTER, 3, 232, 152, DOWN
	end_exits
IncaLetter7ExitTable:
	db 0
IncaLetter8ExitTable:
	db 4
	dw IncaLetter8Exit_0
	dw IncaLetter8Exit_1
	dw IncaLetter8Exit_2
	dw IncaLetter8Exit_3
	begin_exits "IncaLetter8"
	exit 28, 0, 29, 0, 0, INCA, LETTER, 9, 128, 232, UP
	exit 10, 30, 11, 30, 0, INCA, LETTER, 10, 168, 8, DOWN
	exit 0, 13, 0, 14, 0, INCA, LETTER, 11, 240, 112, LEFT
	exit 31, 13, 31, 14, 0, INCA, LETTER, 1, 8, 168, RIGHT
	end_exits
IncaLetter9ExitTable:
	db 1
	dw IncaLetter9Exit_0
	begin_exits "IncaLetter9"
	exit 15, 30, 16, 30, 0, INCA, LETTER, 8, 232, 8, DOWN
	end_exits
IncaLetter10ExitTable:
	db 2
	dw IncaLetter10Exit_0
	dw IncaLetter10Exit_1
	begin_exits "IncaLetter10"
	exit 20, 0, 21, 0, 0, INCA, LETTER, 8, 88, 232, UP
	exit 0, 2, 0, 3, 0, INCA, LETTER, 11, 240, 224, LEFT
	end_exits
IncaLetter11ExitTable:
	db 2
	dw IncaLetter11Exit_0
	dw IncaLetter11Exit_1
	begin_exits "IncaLetter11"
	exit 31, 27, 31, 28, 0, INCA, LETTER, 10, 8, 24, RIGHT
	exit 31, 13, 31, 14, 0, INCA, LETTER, 8, 8, 112, RIGHT
	end_exits
IncaLetter12ExitTable:
	db 2
	dw IncaLetter12Exit_0
	dw IncaLetter12Exit_1
	begin_exits "IncaLetter12"
	exit 6, 31, 7, 31, 0, INCA, LETTER, 1, 64, 8, DOWN
	exit 15, 0, 16, 0, 0, INCA, LETTER, 13, 128, 240, UP
	end_exits
IncaLetter13ExitTable:
	db 1
	dw IncaLetter13Exit_0
	begin_exits "IncaLetter13"
	exit 15, 31, 16, 31, 0, INCA, LETTER, 12, 128, 8, DOWN
	end_exits

IncaMayorExitTables:
	dw IncaMayor0ExitTable
	dw IncaMayor1ExitTable
	dw IncaMayor2ExitTable
	dw IncaMayor3ExitTable
	dw IncaMayor4ExitTable
	dw IncaMayor5ExitTable
	dw IncaMayor6ExitTable
	dw IncaMayor7ExitTable
	dw IncaMayor8ExitTable
	dw IncaMayor9ExitTable
	dw IncaMayor10ExitTable
IncaMayor0ExitTable:
	db 4
	dw IncaMayor0Exit_0
	dw IncaMayor0Exit_1
	dw IncaMayor0Exit_2
	dw IncaMayor0Exit_3
	begin_exits "IncaMayor0"
	exit 31, 24, 31, 25, 0, INCA, HUB, 0, 8, 168, RIGHT
	exit 24, 9, 25, 9, 0, INCA, MAYOR, 2, 200, 240, UP
	exit 16, 10, 16, 10, 2, INCA, MAYOR, 6, 24, 48, DOWN
	exit 11, 9, 12, 9, 0, INCA, MAYOR, 10, 128, 240, UP
	end_exits
IncaMayor1ExitTable:
	db 3
	dw IncaMayor1Exit_0
	dw IncaMayor1Exit_1
	dw IncaMayor1Exit_2
	begin_exits "IncaMayor1"
	exit 31, 23, 31, 24, 0, INCA, MAYOR, 2, 8, 160, RIGHT
	exit 0, 27, 0, 28, 0, INCA, MAYOR, 3, 240, 224, LEFT
	exit 6, 16, 6, 16, 3, INCA, MAYOR, 7, 120, 208, RIGHT
	end_exits
IncaMayor2ExitTable:
	db 5
	dw IncaMayor2Exit_0
	dw IncaMayor2Exit_1
	dw IncaMayor2Exit_2
	dw IncaMayor2Exit_3
	dw IncaMayor2Exit_4
	begin_exits "IncaMayor2"
	exit 24, 31, 25, 31, 0, INCA, MAYOR, 0, 200, 80, DOWN
	exit 0, 19, 0, 20, 0, INCA, MAYOR, 1, 240, 192, LEFT
	exit 31, 5, 31, 6, 0, INCA, MAYOR, 3, 8, 56, RIGHT
	exit 17, 0, 18, 0, 0, INCA, MAYOR, 4, 128, 240, UP
	exit 7, 31, 8, 31, 0, INCA, MAYOR, 10, 128, 40, DOWN
	end_exits
IncaMayor3ExitTable:
	db 3
	dw IncaMayor3Exit_0
	dw IncaMayor3Exit_1
	dw IncaMayor3Exit_2
	begin_exits "IncaMayor3"
	exit 0, 6, 0, 7, 0, INCA, MAYOR, 2, 240, 48, DOWN
	exit 31, 27, 31, 28, 0, INCA, MAYOR, 1, 8, 224, RIGHT
	exit 18, 0, 19, 0, 0, INCA, MAYOR, 8, 152, 240, UP
	end_exits
IncaMayor4ExitTable:
	db 2
	dw IncaMayor4Exit_0
	dw IncaMayor4Exit_1
	begin_exits "IncaMayor4"
	exit 15, 31, 16, 31, 0, INCA, MAYOR, 2, 144, 8, DOWN
	exit 15, 0, 16, 0, 0, INCA, MAYOR, 5, 128, 240, UP
	end_exits
IncaMayor5ExitTable:
	db 1
	dw IncaMayor5Exit_0
	begin_exits "IncaMayor5"
	exit 15, 31, 16, 31, 0, INCA, MAYOR, 4, 128, 8, DOWN
	end_exits
IncaMayor6ExitTable:
	db 1
	dw IncaMayor6Exit_0
	begin_exits "IncaMayor6"
	exit 7, 12, 7, 12, 2, INCA, MAYOR, 0, 128, 88, DOWN
	end_exits
IncaMayor7ExitTable:
	db 0
IncaMayor8ExitTable:
	db 2
	dw IncaMayor8Exit_0
	dw IncaMayor8Exit_1
	begin_exits "IncaMayor8"
	exit 18, 31, 19, 31, 0, INCA, MAYOR, 3, 152, 8, DOWN
	exit 28, 0, 29, 0, 0, INCA, MAYOR, 9, 152, 240, UP
	end_exits
IncaMayor9ExitTable:
	db 1
	dw IncaMayor9Exit_0
	begin_exits "IncaMayor9"
	exit 18, 31, 19, 31, 0, INCA, MAYOR, 8, 232, 8, DOWN
	end_exits
IncaMayor10ExitTable:
	db 6
	dw IncaMayor10Exit_0
	dw IncaMayor10Exit_1
	dw IncaMayor10Exit_2
	dw IncaMayor10Exit_3
	dw IncaMayor10Exit_4
	dw IncaMayor10Exit_5
	begin_exits "IncaMayor10"
	exit 15, 31, 16, 31, 0, INCA, MAYOR, 0, 96, 80, DOWN
	exit 15, 4, 16, 4, 0, INCA, MAYOR, 2, 64, 240, UP
	exit 26, 4, 27, 4, 0, INCA, MAYOR, 10, 208, 240, UP
	exit 4, 4, 5, 4, 0, INCA, MAYOR, 10, 48, 240, UP
	exit 25, 31, 26, 31, 0, INCA, MAYOR, 10, 216, 40, DOWN
	exit 5, 31, 6, 31, 0, INCA, MAYOR, 10, 40, 40, DOWN
	end_exits

IncaJewelExitTables:
	dw IncaJewel0ExitTable
	dw IncaJewel1ExitTable
	dw IncaJewel2ExitTable
	dw IncaJewel3ExitTable
	dw IncaJewel4ExitTable
	dw IncaJewel5ExitTable
	dw IncaJewel6ExitTable
	dw IncaJewel7ExitTable
	dw IncaJewel8ExitTable
	dw IncaJewel9ExitTable
IncaJewel0ExitTable:
	db 6
	dw IncaJewel0Exit_0
	dw IncaJewel0Exit_1
	dw IncaJewel0Exit_2
	dw IncaJewel0Exit_3
	dw IncaJewel0Exit_4
	dw IncaJewel0Exit_5
	begin_exits "IncaJewel0"
	exit 15, 31, 16, 31, 0, INCA, JEWEL, 4, 128, 8, DOWN
	exit 15, 0, 16, 0, 0, INCA, JEWEL, 5, 136, 240, UP
	exit 0, 20, 0, 21, 0, INCA, JEWEL, 0, 240, 168, LEFT
	exit 31, 20, 31, 20, 0, INCA, JEWEL, 0, 8, 168, RIGHT
	exit 31, 21, 31, 21, 0, INCA, JEWEL, 0, 8, 168, UP
	exit 26, 5, 26, 5, 2, INCA, JEWEL, 6, 24, 32, UP
	end_exits
IncaJewel1ExitTable:
	db 4
	dw IncaJewel1Exit_0
	dw IncaJewel1Exit_1
	dw IncaJewel1Exit_2
	dw IncaJewel1Exit_3
	begin_exits "IncaJewel1"
	exit 15, 31, 16, 31, 0, INCA, HUB, 0, 128, 8, DOWN
	exit 0, 22, 0, 23, 0, INCA, JEWEL, 2, 240, 200, LEFT
	exit 4, 0, 5, 0, 0, INCA, JEWEL, 4, 40, 240, UP
	exit 10, 26, 10, 26, 3, INCA, JEWEL, 7, 128, 208, UP
	end_exits
IncaJewel2ExitTable:
	db 3
	dw IncaJewel2Exit_0
	dw IncaJewel2Exit_1
	dw IncaJewel2Exit_2
	begin_exits "IncaJewel2"
	exit 31, 24, 31, 25, 0, INCA, JEWEL, 1, 8, 184, RIGHT
	exit 5, 0, 6, 0, 0, INCA, JEWEL, 3, 48, 240, UP
	exit 17, 0, 18, 0, 0, INCA, JEWEL, 3, 144, 240, UP
	end_exits
IncaJewel3ExitTable:
	db 5
	dw IncaJewel3Exit_0
	dw IncaJewel3Exit_1
	dw IncaJewel3Exit_2
	dw IncaJewel3Exit_3
	dw IncaJewel3Exit_4
	begin_exits "IncaJewel3"
	exit 5, 31, 6, 31, 0, INCA, JEWEL, 2, 48, 8, DOWN
	exit 17, 31, 18, 31, 0, INCA, JEWEL, 2, 144, 8, DOWN
	exit 31, 8, 31, 9, 0, INCA, JEWEL, 4, 8, 72, RIGHT
	exit 26, 5, 26, 5, 2, INCA, JEWEL, 6, 24, 32, DOWN
	exit 15, 0, 16, 0, 0, INCA, JEWEL, 8, 128, 240, UP
	end_exits
IncaJewel4ExitTable:
	db 3
	dw IncaJewel4Exit_0
	dw IncaJewel4Exit_1
	dw IncaJewel4Exit_2
	begin_exits "IncaJewel4"
	exit 0, 8, 0, 9, 0, INCA, JEWEL, 3, 240, 72, LEFT
	exit 15, 0, 16, 0, 0, INCA, JEWEL, 0, 128, 240, UP
	exit 4, 31, 5, 31, 0, INCA, JEWEL, 1, 40, 8, DOWN
	end_exits
IncaJewel5ExitTable:
	db 1
	dw IncaJewel5Exit_0
	begin_exits "IncaJewel5"
	exit 16, 31, 17, 31, 0, INCA, JEWEL, 0, 128, 8, DOWN
	end_exits
IncaJewel6ExitTable:
	db 1
	dw IncaJewel6Exit_0
	begin_exits "IncaJewel6"
	exit 13, 9, 13, 9, 2, INCA, JEWEL, 3, 208, 48, DOWN
	end_exits
IncaJewel7ExitTable:
	db 0
IncaJewel8ExitTable:
	db 2
	dw IncaJewel8Exit_0
	dw IncaJewel8Exit_1
	begin_exits "IncaJewel8"
	exit 15, 31, 16, 31, 0, INCA, JEWEL, 3, 128, 8, DOWN
	exit 10, 0, 11, 0, 0, INCA, JEWEL, 9, 88, 240, UP
	end_exits
IncaJewel9ExitTable:
	db 1
	dw IncaJewel9Exit_0
	begin_exits "IncaJewel9"
	exit 10, 31, 11, 31, 0, INCA, JEWEL, 8, 88, 8, DOWN
	end_exits

IncaBossExitTables:
	dw IncaBoss0ExitTable
	dw IncaBoss1ExitTable
IncaBoss0ExitTable:
	db 0
IncaBoss1ExitTable:
	db 0

