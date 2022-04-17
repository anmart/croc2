; Work in progress list of exits. Just getting it to this point is a MIRACLE.
; There are several rooms with broken data, in DIFFERENT WAYS
; I tried documenting the egregious ones with a "WORKAROUND:" comment

; the layout looks something like this
; world exit table -> level exit table -> screen exit table -> screen table (amount of exits followed by a pointer for each exit) -> various exit data, different depending on type
; the exit data starts as: x check, y check, jump index
; it checks for croc's x and y locations, then runs different exit code depending on index.
; an index of 1 means you've entered a shop, the values aren't well known
; other exits use the following data: new level, new screen, new x, new y, new direction
SailorExitTables: ; 8c1f8 (23:41f8)
	dw SailorHubExitTables
	dw SailorCageExitTables
	dw SailorCrowExitTables
	dw SailorItemsExitTables
	dw SailorBossExitTables
SailorHubExitTables: ; 8c1f8 (23:41f8)
	dw SailorHub0ExitTable
SailorCageExitTables: ; 8c1f8 (23:41f8)
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
SailorCrowExitTables: ; 8c1f8 (23:41f8)
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
SailorItemsExitTables: ; 8c1f8 (23:41f8)
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
SailorBossExitTables: ; 8c1f8 (23:41f8)
	dw SailorBoss0ExitTable
CossackExitTables: ; 8c24a (23:424a)
	dw CossackHubExitTables
	dw CossackHerbExitTables
	dw CossackMinesExitTables
	dw CossackSnowmanExitTables
	dw CossackBossExitTables
CossackHubExitTables: ; 8c24a (23:424a)
	dw CossackHub0ExitTable
CossackHerbExitTables: ; 8c24a (23:424a)
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
CossackMinesExitTables: ; 8c24a (23:424a)
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
CossackSnowmanExitTables: ; 8c24a (23:424a)
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
CossackBossExitTables: ; 8c24a (23:424a)
	dw CossackBoss0ExitTable
CavemanExitTables: ; 8c29e (23:429e)
	dw CavemanHubExitTables
	dw CavemanRoboExitTables
	dw CavemanGearsExitTables
	dw CavemanWaterExitTables
	dw CavemanBossExitTables
CavemanHubExitTables: ; 8c29e (23:429e)
	dw CavemanHub0ExitTable
CavemanRoboExitTables: ; 8c29e (23:429e)
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
CavemanGearsExitTables: ; 8c29e (23:429e)
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
CavemanWaterExitTables: ; 8c29e (23:429e)
	dw CavemanWater0ExitTable
	dw CavemanWater1ExitTable
	dw CavemanWater2ExitTable
	dw CavemanWater3ExitTable
	dw CavemanWater4ExitTable
	dw CavemanWater5ExitTable
	dw CavemanWater6ExitTable
	dw CavemanWater7ExitTable
	dw CavemanWater2ExitTable
	dw CavemanWater8ExitTable
	dw CavemanWater9ExitTable
	dw CavemanWater10ExitTable
CavemanBossExitTables: ; 8c29e (23:429e)
	dw CavemanBoss0ExitTable
IncaExitTables: ; 8c2fe (23:42fe)
	dw IncaHubExitTables
	dw IncaLetterExitTables
	dw IncaMayorExitTables
	dw IncaJewelExitTables
	dw IncaBossExitTables
IncaHubExitTables: ; 8c2fe (23:42fe)
	dw IncaHub0ExitTable
IncaLetterExitTables: ; 8c2fe (23:42fe)
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
IncaMayorExitTables: ; 8c2fe (23:42fe)
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
IncaJewelExitTables: ; 8c2fe (23:42fe)
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
IncaBossExitTables: ; 8c2fe (23:42fe)
	dw IncaBoss0ExitTable
	dw IncaBoss0ExitTable
SailorHub0ExitTable: ; 8c354 (23:8c354)
	db 10
	dw SailorHub0Exit_0
	dw SailorHub0Exit_1
	dw SailorHub0Exit_2
	dw SailorHub0Exit_3
	dw SailorHub0Exit_4
	dw SailorHub0Exit_5
	dw SailorHub0Exit_6
	dw SailorHub0Exit_7
	dw SailorHub0Exit_8
	dw SailorHub0Exit_9
	begin_exits "SailorHub0"
	exit 0, 16, 0, CAGE, 0, 240, 208, LEFT
	exit 0, 17, 0, CAGE, 0, 240, 208, LEFT
	exit 31, 18, 0, CROW, 0, 8, 152, RIGHT
	exit 31, 19, 0, CROW, 0, 8, 152, RIGHT
	exit 7, 0, 0, ITEMS, 0, 128, 240, UP
	exit 8, 0, 0, ITEMS, 0, 128, 240, UP
	exit 24, 0, 0, BOSS, 0, 64, 108, UP
	exit 25, 0, 0, BOSS, 0, 64, 108, UP
	exit 16, 7, 1, 3, 136, 64
	exit 17, 7, 1, 3, 136, 64
	end_exits
SailorCage0ExitTable: ; 8c3b5 (23:8c3b5)
	db 9
	dw SailorCage0Exit_0
	dw SailorCage0Exit_1
	dw SailorCage0Exit_2
	dw SailorCage0Exit_3
	dw SailorCage0Exit_4
	dw SailorCage0Exit_5
	dw SailorCage0Exit_6
	dw SailorCage0Exit_7
	dw SailorCage0Exit_8
	begin_exits "SailorCage0"
	exit 31, 25, 0, HUB, 0, 8, 136, RIGHT
	exit 31, 26, 0, HUB, 0, 8, 136, RIGHT
	exit 3, 0, 0, CAGE, 2, 40, 240, UP
	exit 4, 0, 0, CAGE, 2, 40, 240, UP
	exit 31, 4, 0, CAGE, 5, 16, 208, RIGHT
	exit 31, 5, 0, CAGE, 5, 16, 208, RIGHT
	exit 4, 27, 2, CAGE, 3, 76, 40, DOWN
	exit 0, 27, 0, CAGE, 6, 240, 176, LEFT
	exit 0, 28, 0, CAGE, 6, 240, 176, LEFT
	end_exits
SailorCage1ExitTable: ; 8c410 (23:8c410)
	db 5
	dw SailorCage1Exit_0
	dw SailorCage1Exit_1
	dw SailorCage1Exit_2
	dw SailorCage1Exit_3
	dw SailorCage1Exit_4
	begin_exits "SailorCage1"
	exit 0, 5, 0, CAGE, 5, 240, 56, LEFT
	exit 0, 6, 0, CAGE, 5, 240, 56, LEFT
	exit 0, 21, 0, CAGE, 5, 240, 208, LEFT
	exit 0, 22, 0, CAGE, 5, 240, 208, LEFT
	exit 23, 4, 3, CAGE, 4, 128, 208, UP
	end_exits
SailorCage2ExitTable: ; 8c443 (23:8c443)
	db 4
	dw SailorCage2Exit_0
	dw SailorCage2Exit_1
	dw SailorCage2Exit_2
	dw SailorCage2Exit_3
	begin_exits "SailorCage2"
	exit 4, 31, 0, CAGE, 0, 32, 8, DOWN
	exit 5, 31, 0, CAGE, 0, 32, 8, DOWN
	exit 31, 24, 0, CAGE, 5, 8, 56, RIGHT
	exit 31, 25, 0, CAGE, 5, 8, 56, RIGHT
	end_exits
SailorCage3ExitTable: ; 8c46c (23:8c46c)
	db 1
	dw SailorCage3Exit_0
	begin_exits "SailorCage3"
	exit 4, 12, 2, CAGE, 0, 36, 224, DOWN
	end_exits
SailorCage4ExitTable: ; 8c477 (23:8c477)
	db 0
SailorCage5ExitTable: ; 8c478 (23:8c478)
	db 10
	dw SailorCage5Exit_0
	dw SailorCage5Exit_1
	dw SailorCage5Exit_2
	dw SailorCage5Exit_3
	dw SailorCage5Exit_4
	dw SailorCage5Exit_5
	dw SailorCage5Exit_6
	dw SailorCage5Exit_7
	dw SailorCage5Exit_8
	dw SailorCage5Exit_9
	begin_exits "SailorCage5"
	exit 0, 25, 0, CAGE, 0, 240, 40, LEFT
	exit 0, 26, 0, CAGE, 0, 240, 40, LEFT
	exit 31, 6, 0, CAGE, 1, 8, 48, RIGHT
	exit 31, 7, 0, CAGE, 1, 8, 48, RIGHT
	exit 31, 25, 0, CAGE, 1, 16, 176, RIGHT
	exit 31, 26, 0, CAGE, 1, 16, 176, RIGHT
	exit 18, 0, 0, CAGE, 8, 176, 240, UP
	exit 19, 0, 0, CAGE, 8, 176, 240, UP
	exit 0, 6, 0, CAGE, 2, 240, 200, LEFT
	exit 0, 7, 0, CAGE, 2, 240, 200, LEFT
	end_exits
SailorCage6ExitTable: ; 8c4dd (23:8c4dd)
	db 4
	dw SailorCage6Exit_0
	dw SailorCage6Exit_1
	dw SailorCage6Exit_2
	dw SailorCage6Exit_3
	begin_exits "SailorCage6"
	exit 31, 21, 0, CAGE, 0, 16, 224, RIGHT
	exit 31, 22, 0, CAGE, 0, 16, 224, RIGHT
	exit 16, 0, 0, CAGE, 7, 120, 240, UP
	exit 17, 0, 0, CAGE, 7, 120, 240, UP
	end_exits
SailorCage7ExitTable: ; 8c506 (23:8c506)
	db 4
	dw SailorCage7Exit_0
	dw SailorCage7Exit_1
	dw SailorCage7Exit_2
	dw SailorCage7Exit_3
	begin_exits "SailorCage7"
	exit 14, 31, 0, CAGE, 6, 136, 8, DOWN
	exit 15, 31, 0, CAGE, 6, 136, 8, DOWN
	exit 31, 4, 0, CAGE, 8, 8, 80, RIGHT
	exit 31, 5, 0, CAGE, 8, 8, 80, RIGHT
	end_exits
SailorCage8ExitTable: ; 8c52f (23:8c52f)
	db 6
	dw SailorCage8Exit_0
	dw SailorCage8Exit_1
	dw SailorCage8Exit_2
	dw SailorCage8Exit_3
	dw SailorCage8Exit_4
	dw SailorCage8Exit_5
	begin_exits "SailorCage8"
	exit 0, 9, 0, CAGE, 7, 240, 40, LEFT
	exit 0, 10, 0, CAGE, 7, 240, 40, LEFT
	exit 13, 0, 0, CAGE, 9, 120, 240, UP
	exit 14, 0, 0, CAGE, 9, 120, 240, UP
	exit 21, 31, 0, CAGE, 5, 152, 8, DOWN
	exit 22, 31, 0, CAGE, 5, 152, 8, DOWN
	end_exits
SailorCage9ExitTable: ; 8c56c (23:8c56c)
	db 2
	dw SailorCage9Exit_0
	dw SailorCage9Exit_1
	begin_exits "SailorCage9"
	exit 14, 31, 0, CAGE, 8, 112, 8, DOWN
	exit 15, 31, 0, CAGE, 8, 112, 8, DOWN
	end_exits
SailorCrow0ExitTable: ; 8c581 (23:8c581)
	db 4
	dw SailorCrow0Exit_0
	dw SailorCrow0Exit_1
	dw SailorCrow0Exit_2
	dw SailorCrow0Exit_3
	begin_exits "SailorCrow0"
	exit 0, 18, 0, HUB, 0, 240, 152, LEFT
	exit 0, 19, 0, HUB, 0, 240, 152, LEFT
	exit 31, 5, 0, CROW, 1, 8, 48, RIGHT
	exit 31, 6, 0, CROW, 1, 8, 48, RIGHT
	end_exits
SailorCrow1ExitTable: ; 8c5aa (23:8c5aa)
	db 6
	dw SailorCrow1Exit_0
	dw SailorCrow1Exit_1
	dw SailorCrow1Exit_2
	dw SailorCrow1Exit_3
	dw SailorCrow1Exit_4
	dw SailorCrow1Exit_5
	begin_exits "SailorCrow1"
	exit 0, 5, 0, CROW, 0, 240, 48, LEFT
	exit 0, 6, 0, CROW, 0, 240, 48, LEFT
	exit 31, 12, 0, CROW, 2, 8, 104, RIGHT
	exit 31, 13, 0, CROW, 2, 8, 104, RIGHT
	exit 31, 19, 0, CROW, 2, 8, 160, RIGHT
	exit 31, 20, 0, CROW, 2, 8, 160, RIGHT
	end_exits
SailorCrow2ExitTable: ; 8c5e7 (23:8c5e7)
	db 11
	dw SailorCrow2Exit_0
	dw SailorCrow2Exit_1
	dw SailorCrow2Exit_2
	dw SailorCrow2Exit_3
	dw SailorCrow2Exit_4
	dw SailorCrow2Exit_5
	dw SailorCrow2Exit_6
	dw SailorCrow2Exit_7
	dw SailorCrow2Exit_8
	dw SailorCrow2Exit_9
	dw SailorCrow2Exit_10
	begin_exits "SailorCrow2"
	exit 0, 12, 0, CROW, 1, 240, 104, LEFT
	exit 0, 13, 0, CROW, 1, 240, 104, LEFT
	exit 0, 19, 0, CROW, 1, 240, 160, LEFT
	exit 0, 20, 0, CROW, 1, 240, 160, LEFT
	exit 22, 0, 0, CROW, 4, 64, 240, UP
	exit 23, 0, 0, CROW, 4, 64, 240, UP
	exit 31, 18, 0, CROW, 3, 8, 112, RIGHT
	exit 31, 19, 0, CROW, 3, 8, 112, RIGHT
	exit 27, 10, 3, CROW, 6, 200, 208, UP
	exit 12, 0, 0, CROW, 7, 104, 240, UP
	exit 13, 0, 0, CROW, 7, 104, 240, UP
	end_exits
SailorCrow3ExitTable: ; 8c656 (23:8c656)
	db 5
	dw SailorCrow3Exit_0
	dw SailorCrow3Exit_1
	dw SailorCrow3Exit_2
	dw SailorCrow3Exit_3
	dw SailorCrow3Exit_4
	begin_exits "SailorCrow3"
	exit 0, 13, 0, CROW, 2, 240, 152, LEFT
	exit 0, 14, 0, CROW, 2, 240, 152, LEFT
	exit 5, 0, 0, CROW, 4, 208, 240, UP
	exit 6, 0, 0, CROW, 4, 208, 240, UP
	exit 23, 15, 2, CROW, 5, 72, 40, DOWN
	end_exits
SailorCrow4ExitTable: ; 8c689 (23:8c689)
	db 4
	dw SailorCrow4Exit_0
	dw SailorCrow4Exit_1
	dw SailorCrow4Exit_2
	dw SailorCrow4Exit_3
	begin_exits "SailorCrow4"
	exit 7, 31, 0, CROW, 2, 184, 8, DOWN
	exit 8, 31, 0, CROW, 2, 184, 8, DOWN
	exit 25, 31, 0, CROW, 3, 48, 8, DOWN
	exit 26, 31, 0, CROW, 3, 48, 8, DOWN
	end_exits
SailorCrow5ExitTable: ; 8c6b2 (23:8c6b2)
	db 1
	dw SailorCrow5Exit_0
	begin_exits "SailorCrow5"
	exit 4, 10, 2, CROW, 3, 184, 128, DOWN
	end_exits
SailorCrow6ExitTable: ; 8c6bd (23:8c6bd)
	db 0
SailorCrow7ExitTable: ; 8c6be (23:8c6be)
	db 8
	dw SailorCrow7Exit_0
	dw SailorCrow7Exit_1
	dw SailorCrow7Exit_2
	dw SailorCrow7Exit_3
	dw SailorCrow7Exit_4
	dw SailorCrow7Exit_5
	dw SailorCrow7Exit_6
	dw SailorCrow7Exit_7
	begin_exits "SailorCrow7"
	exit 12, 31, 0, CROW, 2, 104, 8, DOWN
	exit 13, 31, 0, CROW, 2, 104, 8, DOWN
	exit 31, 10, 0, CROW, 8, 8, 88, RIGHT
	exit 31, 11, 0, CROW, 8, 8, 88, RIGHT
	exit 0, 11, 0, CROW, 9, 240, 96, LEFT
	exit 0, 12, 0, CROW, 9, 240, 96, LEFT
	exit 12, 0, 0, CROW, 10, 104, 240, UP
	exit 13, 0, 0, CROW, 10, 104, 240, UP
	end_exits
SailorCrow8ExitTable: ; 8c70f (23:8c70f)
	db 4
	dw SailorCrow8Exit_0
	dw SailorCrow8Exit_1
	dw SailorCrow8Exit_2
	dw SailorCrow8Exit_3
	begin_exits "SailorCrow8"
	exit 0, 10, 0, CROW, 7, 240, 88, LEFT
	exit 0, 11, 0, CROW, 7, 240, 88, LEFT
	exit 31, 10, 0, CROW, 9, 8, 96, RIGHT
	exit 31, 11, 0, CROW, 9, 8, 96, RIGHT
	end_exits
SailorCrow9ExitTable: ; 8c738 (23:8c738)
	db 4
	dw SailorCrow9Exit_0
	dw SailorCrow9Exit_1
	dw SailorCrow9Exit_2
	dw SailorCrow9Exit_3
	begin_exits "SailorCrow9"
	exit 0, 11, 0, CROW, 8, 240, 88, LEFT
	exit 0, 12, 0, CROW, 8, 240, 88, LEFT
	exit 31, 11, 0, CROW, 7, 8, 96, RIGHT
	exit 31, 12, 0, CROW, 7, 8, 96, RIGHT
	end_exits
SailorCrow10ExitTable: ; 8c761 (23:8c761)
	db 14
	dw SailorCrow10Exit_0
	dw SailorCrow10Exit_1
	dw SailorCrow10Exit_2
	dw SailorCrow10Exit_3
	dw SailorCrow10Exit_4
	dw SailorCrow10Exit_5
	dw SailorCrow10Exit_6
	dw SailorCrow10Exit_7
	dw SailorCrow10Exit_8
	dw SailorCrow10Exit_9
	dw SailorCrow10Exit_10
	dw SailorCrow10Exit_11
	dw SailorCrow10Exit_12
	dw SailorCrow10Exit_13
	begin_exits "SailorCrow10"
	exit 24, 23, 0, CROW, 10, 56, 40, DOWN
	exit 25, 23, 0, CROW, 10, 56, 40, DOWN
	exit 15, 23, 0, CROW, 10, 200, 40, DOWN
	exit 16, 23, 0, CROW, 10, 200, 40, DOWN
	exit 6, 23, 0, CROW, 10, 128, 40, DOWN
	exit 7, 23, 0, CROW, 10, 128, 40, DOWN
	exit 15, 4, 0, CROW, 10, 200, 192, DOWN
	exit 16, 4, 0, CROW, 10, 200, 192, DOWN
	exit 24, 4, 0, CROW, 10, 56, 192, DOWN
	exit 25, 4, 0, CROW, 10, 56, 192, DOWN
	exit 6, 4, 0, CROW, 10, 128, 192, DOWN
	exit 7, 4, 0, CROW, 10, 128, 192, DOWN
	exit 12, 31, 0, CROW, 7, 104, 8, DOWN
	exit 13, 31, 0, CROW, 7, 104, 8, DOWN
	end_exits
SailorItems0ExitTable: ; 8c7ee (23:8c7ee)
	db 7
	dw SailorItems0Exit_0
	dw SailorItems0Exit_1
	dw SailorItems0Exit_2
	dw SailorItems0Exit_3
	dw SailorItems0Exit_4
	dw SailorItems0Exit_5
	dw SailorItems0Exit_6
	begin_exits "SailorItems0"
	exit 15, 31, 0, HUB, 0, 64, 8, DOWN
	exit 16, 31, 0, HUB, 0, 64, 8, DOWN
	exit 5, 0, 0, ITEMS, 8, 48, 240, UP
	exit 6, 0, 0, ITEMS, 8, 48, 240, UP
	exit 24, 0, 0, ITEMS, 8, 200, 240, UP
	exit 25, 0, 0, ITEMS, 8, 200, 240, UP
	exit 14, 6, 2, ITEMS, 6, 88, 88, DOWN
	end_exits
SailorItems1ExitTable: ; 8c835 (23:8c835)
	db 12
	dw SailorItems1Exit_0
	dw SailorItems1Exit_1
	dw SailorItems1Exit_2
	dw SailorItems1Exit_3
	dw SailorItems1Exit_4
	dw SailorItems1Exit_5
	dw SailorItems1Exit_6
	dw SailorItems1Exit_7
	dw SailorItems1Exit_8
	dw SailorItems1Exit_9
	dw SailorItems1Exit_10
	dw SailorItems1Exit_11
	begin_exits "SailorItems1"
	exit 22, 0, 0, ITEMS, 4, 112, 240, UP
	exit 23, 0, 0, ITEMS, 4, 112, 240, UP
	exit 31, 6, 0, ITEMS, 10, 8, 40, RIGHT
	exit 31, 7, 0, ITEMS, 10, 8, 40, RIGHT
	exit 31, 17, 0, ITEMS, 10, 8, 216, RIGHT
	exit 31, 18, 0, ITEMS, 10, 8, 216, RIGHT
	exit 24, 31, 0, ITEMS, 8, 200, 8, DOWN
	exit 25, 31, 0, ITEMS, 8, 200, 8, DOWN
	exit 5, 31, 0, ITEMS, 8, 48, 8, DOWN
	exit 6, 31, 0, ITEMS, 8, 48, 8, DOWN
	exit 0, 15, 0, ITEMS, 9, 240, 200, LEFT
	exit 0, 16, 0, ITEMS, 9, 240, 200, LEFT
	end_exits
SailorItems2ExitTable: ; 8c8ae (23:8c8ae)
	db 5
	dw SailorItems2Exit_0
	dw SailorItems2Exit_1
	dw SailorItems2Exit_2
	dw SailorItems2Exit_3
	dw SailorItems2Exit_4
	begin_exits "SailorItems2"
	exit 17, 0, 0, ITEMS, 5, 56, 232, UP
	exit 18, 0, 0, ITEMS, 5, 56, 232, UP
	exit 31, 18, 0, ITEMS, 9, 8, 40, RIGHT
	exit 31, 19, 0, ITEMS, 9, 8, 40, RIGHT
	exit 9, 18, 3, ITEMS, 7, 128, 208, UP
	end_exits
SailorItems3ExitTable: ; 8c8e1 (23:8c8e1)
	db 4
	dw SailorItems3Exit_0
	dw SailorItems3Exit_1
	dw SailorItems3Exit_2
	dw SailorItems3Exit_3
	begin_exits "SailorItems3"
	exit 0, 6, 0, ITEMS, 10, 240, 40, LEFT
	exit 0, 7, 0, ITEMS, 10, 240, 40, LEFT
	exit 0, 17, 0, ITEMS, 10, 240, 216, LEFT
	exit 0, 18, 0, ITEMS, 10, 240, 216, LEFT
	end_exits
SailorItems4ExitTable: ; 8c90a (23:8c90a)
	db 6
	dw SailorItems4Exit_0
	dw SailorItems4Exit_1
	dw SailorItems4Exit_2
	dw SailorItems4Exit_3
	dw SailorItems4Exit_4
	dw SailorItems4Exit_5
	begin_exits "SailorItems4"
	exit 0, 6, 0, ITEMS, 5, 240, 56, LEFT
	exit 0, 7, 0, ITEMS, 5, 240, 56, LEFT
	exit 0, 15, 0, ITEMS, 5, 240, 128, LEFT
	exit 0, 16, 0, ITEMS, 5, 240, 128, LEFT
	exit 13, 31, 0, ITEMS, 1, 184, 8, UP
	exit 14, 31, 0, ITEMS, 1, 184, 8, UP
	end_exits
SailorItems5ExitTable: ; 8c947 (23:8c947)
	db 6
	dw SailorItems5Exit_0
	dw SailorItems5Exit_1
	dw SailorItems5Exit_2
	dw SailorItems5Exit_3
	dw SailorItems5Exit_4
	dw SailorItems5Exit_5
	begin_exits "SailorItems5"
	exit 31, 6, 0, ITEMS, 4, 8, 56, RIGHT
	exit 31, 7, 0, ITEMS, 4, 8, 56, RIGHT
	exit 31, 15, 0, ITEMS, 4, 8, 128, RIGHT
	exit 31, 16, 0, ITEMS, 4, 8, 128, RIGHT
	exit 6, 30, 0, ITEMS, 2, 144, 8, DOWN
	exit 7, 30, 0, ITEMS, 2, 144, 8, DOWN
	end_exits
SailorItems6ExitTable: ; 8c984 (23:8c984)
	db 1
	dw SailorItems6Exit_0
	begin_exits "SailorItems6"
	exit 10, 7, 2, ITEMS, 0, 112, 56, DOWN
	end_exits
SailorItems7ExitTable: ; 8c98f (23:8c98f)
	db 0
SailorItems8ExitTable: ; 8c990 (23:8c990)
	db 8
	dw SailorItems8Exit_0
	dw SailorItems8Exit_1
	dw SailorItems8Exit_2
	dw SailorItems8Exit_3
	dw SailorItems8Exit_4
	dw SailorItems8Exit_5
	dw SailorItems8Exit_6
	dw SailorItems8Exit_7
	begin_exits "SailorItems8"
	exit 24, 31, 0, ITEMS, 0, 200, 8, DOWN
	exit 25, 31, 0, ITEMS, 0, 200, 8, DOWN
	exit 5, 31, 0, ITEMS, 0, 48, 8, DOWN
	exit 6, 31, 0, ITEMS, 0, 48, 8, DOWN
	exit 24, 0, 0, ITEMS, 1, 200, 240, UP
	exit 25, 0, 0, ITEMS, 1, 200, 240, UP
	exit 5, 0, 0, ITEMS, 1, 48, 240, UP
	exit 6, 0, 0, ITEMS, 1, 48, 240, UP
	end_exits
SailorItems9ExitTable: ; 8c9e1 (23:8c9e1)
	db 6
	dw SailorItems9Exit_0
	dw SailorItems9Exit_1
	dw SailorItems9Exit_2
	dw SailorItems9Exit_3
	dw SailorItems9Exit_4
	dw SailorItems9Exit_5
	begin_exits "SailorItems9"
	exit 31, 24, 0, ITEMS, 1, 8, 128, RIGHT
	exit 31, 25, 0, ITEMS, 1, 8, 128, RIGHT
	exit 23, 0, 0, ITEMS, 11, 200, 240, UP
	exit 24, 0, 0, ITEMS, 11, 200, 240, UP
	exit 0, 4, 0, ITEMS, 2, 240, 152, LEFT
	exit 0, 5, 0, ITEMS, 2, 240, 152, LEFT
	end_exits
SailorItems10ExitTable: ; 8ca1e (23:8ca1e)
	db 8
	dw SailorItems10Exit_0
	dw SailorItems10Exit_1
	dw SailorItems10Exit_2
	dw SailorItems10Exit_3
	dw SailorItems10Exit_4
	dw SailorItems10Exit_5
	dw SailorItems10Exit_6
	dw SailorItems10Exit_7
	begin_exits "SailorItems10"
	exit 0, 4, 0, ITEMS, 1, 240, 56, LEFT
	exit 0, 5, 0, ITEMS, 1, 240, 56, LEFT
	exit 0, 26, 0, ITEMS, 1, 240, 144, LEFT
	exit 0, 27, 0, ITEMS, 1, 240, 144, LEFT
	exit 31, 4, 0, ITEMS, 3, 8, 56, RIGHT
	exit 31, 5, 0, ITEMS, 3, 8, 56, RIGHT
	exit 31, 26, 0, ITEMS, 3, 8, 144, RIGHT
	exit 31, 27, 0, ITEMS, 3, 8, 144, RIGHT
	end_exits
SailorItems11ExitTable: ; 8ca6f (23:8ca6f)
	db 4
	dw SailorItems11Exit_0
	dw SailorItems11Exit_1
	dw SailorItems11Exit_2
	dw SailorItems11Exit_3
	begin_exits "SailorItems11"
	exit 24, 31, 0, ITEMS, 9, 192, 8, DOWN
	exit 25, 31, 0, ITEMS, 9, 192, 8, DOWN
	exit 13, 0, 0, ITEMS, 12, 64, 240, UP
	exit 14, 0, 0, ITEMS, 12, 64, 240, UP
	end_exits
SailorItems12ExitTable: ; 8ca98 (23:8ca98)
	db 2
	dw SailorItems12Exit_0
	dw SailorItems12Exit_1
	begin_exits "SailorItems12"
	exit 7, 31, 0, ITEMS, 11, 112, 8, DOWN
	exit 8, 31, 0, ITEMS, 11, 112, 8, DOWN
	end_exits
SailorBoss0ExitTable: ; 8caad (23:8caad)
	db 0
CossackHub0ExitTable: ; 8caae (23:8caae)
	db 10
	dw CossackHub0Exit_0
	dw CossackHub0Exit_1
	dw CossackHub0Exit_2
	dw CossackHub0Exit_3
	dw CossackHub0Exit_4
	dw CossackHub0Exit_5
	dw CossackHub0Exit_6
	dw CossackHub0Exit_7
	dw CossackHub0Exit_8
	dw CossackHub0Exit_9
	begin_exits "CossackHub0"
	exit 11, 0, 0, HERB, 0, 128, 240, UP
	exit 12, 0, 0, HERB, 0, 128, 240, UP
	exit 6, 5, 0, MINES, 0, 152, 240, UP
	exit 7, 5, 0, MINES, 0, 152, 240, UP
	exit 31, 19, 0, SNOWMAN, 0, 8, 208, RIGHT
	exit 31, 20, 0, SNOWMAN, 0, 8, 208, RIGHT
	exit 27, 3, 0, BOSS, 0, 64, 96, UP
	exit 28, 3, 0, BOSS, 0, 64, 96, UP
	exit 13, 15, 1, 3, 112, 128
	exit 14, 15, 1, 3, 112, 128
	end_exits
CossackHerb0ExitTable: ; 8cb0f (23:8cb0f)
	db 4
	dw CossackHerb0Exit_0
	dw CossackHerb0Exit_1
	dw CossackHerb0Exit_2
	dw CossackHerb0Exit_3
	begin_exits "CossackHerb0"
	exit 15, 31, 0, HUB, 0, 96, 8, DOWN
	exit 16, 31, 0, HUB, 0, 96, 8, DOWN
	exit 27, 0, 0, HERB, 7, 128, 240, UP
	exit 28, 0, 0, HERB, 7, 128, 240, UP
	end_exits
CossackHerb1ExitTable: ; 8cb38 (23:8cb38)
	db 7
	dw CossackHerb1Exit_0
	dw CossackHerb1Exit_1
	dw CossackHerb1Exit_2
	dw CossackHerb1Exit_3
	dw CossackHerb1Exit_4
	dw CossackHerb1Exit_5
	dw CossackHerb1Exit_6
	begin_exits "CossackHerb1"
	exit 2, 0, 0, HERB, 2, 24, 240, UP
	exit 3, 0, 0, HERB, 2, 24, 240, UP
	exit 28, 31, 0, HERB, 7, 128, 8, DOWN
	exit 29, 31, 0, HERB, 7, 128, 8, DOWN
	exit 0, 21, 0, HERB, 3, 240, 208, LEFT
	exit 0, 22, 0, HERB, 3, 240, 208, LEFT
	exit 2, 17, 2, HERB, 5, 96, 40, DOWN
	end_exits
CossackHerb2ExitTable: ; 8cb7f (23:8cb7f)
	db 3
	dw CossackHerb2Exit_0
	dw CossackHerb2Exit_1
	dw CossackHerb2Exit_2
	begin_exits "CossackHerb2"
	exit 2, 31, 0, HERB, 1, 24, 8, DOWN
	exit 3, 31, 0, HERB, 1, 24, 8, DOWN
	exit 26, 16, 3, HERB, 6, 128, 200, UP
	end_exits
CossackHerb3ExitTable: ; 8cb9e (23:8cb9e)
	db 4
	dw CossackHerb3Exit_0
	dw CossackHerb3Exit_1
	dw CossackHerb3Exit_2
	dw CossackHerb3Exit_3
	begin_exits "CossackHerb3"
	exit 14, 0, 0, HERB, 4, 120, 240, UP
	exit 15, 0, 0, HERB, 4, 120, 240, UP
	exit 31, 25, 0, HERB, 1, 8, 176, RIGHT
	exit 31, 26, 0, HERB, 1, 8, 176, RIGHT
	end_exits
CossackHerb4ExitTable: ; 8cbc7 (23:8cbc7)
	db 4
	dw CossackHerb4Exit_0
	dw CossackHerb4Exit_1
	dw CossackHerb4Exit_2
	dw CossackHerb4Exit_3
	begin_exits "CossackHerb4"
	exit 14, 31, 0, HERB, 3, 120, 8, DOWN
	exit 15, 31, 0, HERB, 3, 120, 8, DOWN
	exit 6, 0, 0, HERB, 8, 120, 240, UP
	exit 7, 0, 0, HERB, 8, 120, 240, UP
	end_exits
CossackHerb5ExitTable: ; 8cbf0 (23:8cbf0)
	db 1
	dw CossackHerb5Exit_0
	begin_exits "CossackHerb5"
	exit 3, 12, 2, HERB, 1, 24, 152, DOWN
	end_exits
CossackHerb6ExitTable: ; 8cbfb (23:8cbfb)
	db 0
CossackHerb7ExitTable: ; 8cbfc (23:8cbfc)
	db 4
	dw CossackHerb7Exit_0
	dw CossackHerb7Exit_1
	dw CossackHerb7Exit_2
	dw CossackHerb7Exit_3
	begin_exits "CossackHerb7"
	exit 15, 31, 0, HERB, 0, 224, 8, DOWN
	exit 16, 31, 0, HERB, 0, 224, 8, DOWN
	exit 15, 0, 0, HERB, 1, 232, 240, UP
	exit 16, 0, 0, HERB, 1, 232, 240, UP
	end_exits
CossackHerb8ExitTable: ; 8cc25 (23:8cc25)
	db 4
	dw CossackHerb8Exit_0
	dw CossackHerb8Exit_1
	dw CossackHerb8Exit_2
	dw CossackHerb8Exit_3
	begin_exits "CossackHerb8"
	exit 14, 31, 0, HERB, 4, 56, 8, UP
	exit 15, 31, 0, HERB, 4, 56, 8, UP
	exit 12, 0, 0, HERB, 9, 120, 240, UP
	exit 13, 0, 0, HERB, 9, 120, 240, UP
	end_exits
CossackHerb9ExitTable: ; 8cc4e (23:8cc4e)
	db 2
	dw CossackHerb9Exit_0
	dw CossackHerb9Exit_1
	begin_exits "CossackHerb9"
	exit 14, 31, 0, HERB, 8, 104, 8, DOWN
	exit 15, 31, 0, HERB, 8, 104, 8, DOWN
	end_exits
CossackMines0ExitTable: ; 8cc63 (23:8cc63)
	db 4
	dw CossackMines0Exit_0
	dw CossackMines0Exit_1
	dw CossackMines0Exit_2
	dw CossackMines0Exit_3
	begin_exits "CossackMines0"
	exit 18, 31, 0, HUB, 0, 56, 49, DOWN
	exit 19, 31, 0, HUB, 0, 56, 49, DOWN
	exit 15, 0, 0, MINES, 8, 72, 240, UP
	exit 16, 0, 0, MINES, 8, 72, 240, UP
	end_exits
CossackMines1ExitTable: ; 8cc8c (23:8cc8c)
	db 7
	dw CossackMines1Exit_0
	dw CossackMines1Exit_1
	dw CossackMines1Exit_2
	dw CossackMines1Exit_3
	dw CossackMines1Exit_4
	dw CossackMines1Exit_5
	dw CossackMines1Exit_6
	begin_exits "CossackMines1"
	exit 15, 31, 0, MINES, 8, 176, 8, DOWN
	exit 16, 31, 0, MINES, 8, 176, 8, DOWN
	exit 24, 0, 0, MINES, 2, 208, 240, UP
	exit 25, 0, 0, MINES, 2, 208, 240, UP
	exit 31, 6, 0, MINES, 4, 8, 208, RIGHT
	exit 31, 7, 0, MINES, 4, 8, 208, RIGHT
	exit 29, 16, 3, MINES, 7, 128, 208, UP
	end_exits
CossackMines2ExitTable: ; 8ccd3 (23:8ccd3)
	db 6
	dw CossackMines2Exit_0
	dw CossackMines2Exit_1
	dw CossackMines2Exit_2
	dw CossackMines2Exit_3
	dw CossackMines2Exit_4
	dw CossackMines2Exit_5
	begin_exits "CossackMines2"
	exit 25, 31, 0, MINES, 1, 200, 8, DOWN
	exit 26, 31, 0, MINES, 1, 200, 8, DOWN
	exit 31, 23, 0, MINES, 4, 8, 96, RIGHT
	exit 31, 24, 0, MINES, 4, 8, 96, RIGHT
	exit 6, 0, 0, MINES, 9, 104, 240, UP
	exit 7, 0, 0, MINES, 9, 104, 240, UP
	end_exits
CossackMines3ExitTable: ; 8cd10 (23:8cd10)
	db 2
	dw CossackMines3Exit_0
	dw CossackMines3Exit_1
	begin_exits "CossackMines3"
	exit 0, 27, 0, MINES, 4, 240, 224, LEFT
	exit 0, 28, 0, MINES, 4, 240, 224, LEFT
	end_exits
CossackMines4ExitTable: ; 8cd25 (23:8cd25)
	db 9
	dw CossackMines4Exit_0
	dw CossackMines4Exit_1
	dw CossackMines4Exit_2
	dw CossackMines4Exit_3
	dw CossackMines4Exit_4
	dw CossackMines4Exit_5
	dw CossackMines4Exit_6
	dw CossackMines4Exit_7
	dw CossackMines4Exit_8
	begin_exits "CossackMines4"
	exit 31, 27, 0, MINES, 3, 8, 224, RIGHT
	exit 31, 28, 0, MINES, 3, 8, 224, RIGHT
	exit 18, 0, 0, MINES, 5, 152, 240, UP
	exit 19, 0, 0, MINES, 5, 152, 240, UP
	exit 0, 11, 0, MINES, 2, 240, 192, LEFT
	exit 0, 12, 0, MINES, 2, 240, 192, LEFT
	exit 0, 25, 0, MINES, 1, 240, 56, LEFT
	exit 0, 26, 0, MINES, 1, 240, 56, LEFT
	exit 11, 25, 2, MINES, 6, 32, 88, UP
	end_exits
CossackMines5ExitTable: ; 8cd80 (23:8cd80)
	db 2
	dw CossackMines5Exit_0
	dw CossackMines5Exit_1
	begin_exits "CossackMines5"
	exit 18, 31, 0, MINES, 4, 152, 8, DOWN
	exit 19, 31, 0, MINES, 4, 152, 8, DOWN
	end_exits
CossackMines6ExitTable: ; 8cd95 (23:8cd95)
	db 1
	dw CossackMines6Exit_0
	begin_exits "CossackMines6"
	exit 9, 4, 2, MINES, 4, 88, 208, UP
	end_exits
CossackMines7ExitTable: ; 8cda0 (23:8cda0)
	db 0
CossackMines8ExitTable: ; 8cda1 (23:8cda1)
	db 4
	dw CossackMines8Exit_0
	dw CossackMines8Exit_1
	dw CossackMines8Exit_2
	dw CossackMines8Exit_3
	begin_exits "CossackMines8"
	exit 8, 31, 0, MINES, 0, 128, 8, DOWN
	exit 9, 31, 0, MINES, 0, 128, 8, DOWN
	exit 21, 0, 0, MINES, 1, 128, 232, UP
	exit 22, 0, 0, MINES, 1, 128, 232, UP
	end_exits
CossackMines9ExitTable: ; 8cdca (23:8cdca)
	db 6
	dw CossackMines9Exit_0
	dw CossackMines9Exit_1
	dw CossackMines9Exit_2
	dw CossackMines9Exit_3
	dw CossackMines9Exit_4
	dw CossackMines9Exit_5
	begin_exits "CossackMines9"
	exit 12, 31, 0, MINES, 2, 56, 8, DOWN
	exit 13, 31, 0, MINES, 2, 56, 8, DOWN
	exit 24, 0, 0, MINES, 10, 216, 232, UP
	exit 25, 0, 0, MINES, 10, 216, 232, UP
	exit 5, 0, 0, MINES, 10, 40, 232, UP
	exit 6, 0, 0, MINES, 10, 40, 232, UP
	end_exits
CossackMines10ExitTable: ; 8ce07 (23:8ce07)
	db 4
	dw CossackMines10Exit_0
	dw CossackMines10Exit_1
	dw CossackMines10Exit_2
	dw CossackMines10Exit_3
	begin_exits "CossackMines10"
	exit 26, 30, 0, MINES, 9, 200, 8, DOWN
	exit 27, 30, 0, MINES, 9, 200, 8, DOWN
	exit 4, 30, 0, MINES, 9, 48, 8, DOWN
	exit 5, 30, 0, MINES, 9, 48, 8, DOWN
	end_exits
CossackSnowman0ExitTable: ; 8ce30 (23:8ce30)
	db 5
	dw CossackSnowman0Exit_0
	dw CossackSnowman0Exit_1
	dw CossackSnowman0Exit_2
	dw CossackSnowman0Exit_3
	dw CossackSnowman0Exit_4
	begin_exits "CossackSnowman0"
	exit 0, 25, 0, HUB, 0, 240, 160, LEFT
	exit 0, 26, 0, HUB, 0, 240, 160, LEFT
	exit 13, 0, 0, SNOWMAN, 12, 112, 240, UP
	exit 14, 0, 0, SNOWMAN, 12, 112, 240, UP
	exit 29, 7, 2, SNOWMAN, 6, 24, 48, RIGHT
	end_exits
CossackSnowman1ExitTable: ; 8ce63 (23:8ce63)
	db 4
	dw CossackSnowman1Exit_0
	dw CossackSnowman1Exit_1
	dw CossackSnowman1Exit_2
	dw CossackSnowman1Exit_3
	begin_exits "CossackSnowman1"
	exit 13, 31, 0, SNOWMAN, 12, 112, 8, DOWN
	exit 14, 31, 0, SNOWMAN, 12, 112, 8, DOWN
	exit 20, 0, 0, SNOWMAN, 2, 64, 112, UP
	exit 21, 0, 0, SNOWMAN, 2, 64, 112, UP
	end_exits
CossackSnowman2ExitTable: ; 8ce8c (23:8ce8c)
	db 8
	dw CossackSnowman2Exit_0
	dw CossackSnowman2Exit_1
	dw CossackSnowman2Exit_2
	dw CossackSnowman2Exit_3
	dw CossackSnowman2Exit_4
	dw CossackSnowman2Exit_5
	dw CossackSnowman2Exit_6
	dw CossackSnowman2Exit_7
	begin_exits "CossackSnowman2"
	exit 7, 15, 0, SNOWMAN, 1, 168, 8, DOWN
	exit 8, 15, 0, SNOWMAN, 1, 168, 8, DOWN
	exit 6, 0, 0, SNOWMAN, 2, 64, 112, UP
	exit 7, 0, 0, SNOWMAN, 2, 64, 112, UP
	exit 0, 7, 0, SNOWMAN, 8, 112, 64, LEFT
	exit 0, 8, 0, SNOWMAN, 8, 112, 64, LEFT
	exit 15, 7, 0, SNOWMAN, 2, 8, 64, RIGHT
	exit 15, 8, 0, SNOWMAN, 2, 8, 64, RIGHT
	end_exits
CossackSnowman3ExitTable: ; 8cedd (23:8cedd)
	db 6
	dw CossackSnowman3Exit_0
	dw CossackSnowman3Exit_1
	dw CossackSnowman3Exit_2
	dw CossackSnowman3Exit_3
	dw CossackSnowman3Exit_4
	dw CossackSnowman3Exit_5
	begin_exits "CossackSnowman3"
	exit 14, 0, 0, SNOWMAN, 2, 64, 112, DOWN
	exit 15, 0, 0, SNOWMAN, 2, 64, 112, DOWN
	exit 11, 31, 0, SNOWMAN, 4, 96, 8, DOWN
	exit 12, 31, 0, SNOWMAN, 4, 96, 8, DOWN
	exit 22, 31, 0, SNOWMAN, 4, 184, 8, DOWN
	exit 23, 31, 0, SNOWMAN, 4, 184, 8, DOWN
	end_exits
CossackSnowman4ExitTable: ; 8cf1a (23:8cf1a)
	db 6
	dw CossackSnowman4Exit_0
	dw CossackSnowman4Exit_1
	dw CossackSnowman4Exit_2
	dw CossackSnowman4Exit_3
	dw CossackSnowman4Exit_4
	dw CossackSnowman4Exit_5
	begin_exits "CossackSnowman4"
	exit 11, 0, 0, SNOWMAN, 3, 96, 240, UP
	exit 12, 0, 0, SNOWMAN, 3, 96, 240, UP
	exit 22, 0, 0, SNOWMAN, 3, 184, 240, UP
	exit 23, 0, 0, SNOWMAN, 3, 184, 240, UP
	exit 6, 31, 0, SNOWMAN, 5, 56, 8, DOWN
	exit 7, 31, 0, SNOWMAN, 5, 56, 8, DOWN
	end_exits
CossackSnowman5ExitTable: ; 8cf57 (23:8cf57)
	db 3
	dw CossackSnowman5Exit_0
	dw CossackSnowman5Exit_1
	dw CossackSnowman5Exit_2
	begin_exits "CossackSnowman5"
	exit 6, 0, 0, SNOWMAN, 4, 56, 240, UP
	exit 7, 0, 0, SNOWMAN, 4, 56, 240, UP
	exit 3, 21, 3, SNOWMAN, 7, 128, 200, UP
	end_exits
CossackSnowman6ExitTable: ; 8cf76 (23:8cf76)
	db 1
	dw CossackSnowman6Exit_0
	begin_exits "CossackSnowman6"
	exit 13, 9, 2, SNOWMAN, 0, 232, 64, DOWN
	end_exits
CossackSnowman7ExitTable: ; 8cf81 (23:8cf81)
	db 0
CossackSnowman8ExitTable: ; 8cf82 (23:8cf82)
	db 8
	dw CossackSnowman8Exit_0
	dw CossackSnowman8Exit_1
	dw CossackSnowman8Exit_2
	dw CossackSnowman8Exit_3
	dw CossackSnowman8Exit_4
	dw CossackSnowman8Exit_5
	dw CossackSnowman8Exit_6
	dw CossackSnowman8Exit_7
	begin_exits "CossackSnowman8"
	exit 7, 15, 0, SNOWMAN, 2, 56, 8, DOWN
	exit 8, 15, 0, SNOWMAN, 2, 56, 8, DOWN
	exit 6, 0, 0, SNOWMAN, 9, 64, 112, UP
	exit 7, 0, 0, SNOWMAN, 9, 64, 112, UP
	exit 0, 7, 0, SNOWMAN, 2, 112, 64, LEFT
	exit 0, 8, 0, SNOWMAN, 2, 112, 64, LEFT
	exit 15, 7, 0, SNOWMAN, 2, 8, 64, RIGHT
	exit 15, 8, 0, SNOWMAN, 2, 8, 64, RIGHT
	end_exits
CossackSnowman9ExitTable: ; 8cfd3 (23:8cfd3)
	db 8
	dw CossackSnowman9Exit_0
	dw CossackSnowman9Exit_1
	dw CossackSnowman9Exit_2
	dw CossackSnowman9Exit_3
	dw CossackSnowman9Exit_4
	dw CossackSnowman9Exit_5
	dw CossackSnowman9Exit_6
	dw CossackSnowman9Exit_7
	begin_exits "CossackSnowman9"
	exit 7, 15, 0, SNOWMAN, 8, 56, 8, DOWN
	exit 8, 15, 0, SNOWMAN, 8, 56, 8, DOWN
	exit 6, 0, 0, SNOWMAN, 10, 64, 112, UP
	exit 7, 0, 0, SNOWMAN, 10, 64, 112, UP
	exit 0, 7, 0, SNOWMAN, 2, 112, 64, LEFT
	exit 0, 8, 0, SNOWMAN, 2, 112, 64, LEFT
	exit 15, 7, 0, SNOWMAN, 2, 8, 64, RIGHT
	exit 15, 8, 0, SNOWMAN, 2, 8, 64, RIGHT
	end_exits
CossackSnowman10ExitTable: ; 8d024 (23:8d024)
	db 8
	dw CossackSnowman10Exit_0
	dw CossackSnowman10Exit_1
	dw CossackSnowman10Exit_2
	dw CossackSnowman10Exit_3
	dw CossackSnowman10Exit_4
	dw CossackSnowman10Exit_5
	dw CossackSnowman10Exit_6
	dw CossackSnowman10Exit_7
	begin_exits "CossackSnowman10"
	exit 7, 15, 0, SNOWMAN, 9, 64, 8, DOWN
	exit 8, 15, 0, SNOWMAN, 9, 64, 8, DOWN
	exit 6, 0, 0, SNOWMAN, 2, 64, 112, UP
	exit 7, 0, 0, SNOWMAN, 2, 64, 112, UP
	exit 0, 7, 0, SNOWMAN, 2, 112, 64, LEFT
	exit 0, 8, 0, SNOWMAN, 2, 112, 64, LEFT
	exit 15, 7, 0, SNOWMAN, 11, 8, 64, RIGHT
	exit 15, 8, 0, SNOWMAN, 11, 8, 64, RIGHT
	end_exits
CossackSnowman11ExitTable: ; 8d075 (23:8d075)
	db 8
	dw CossackSnowman11Exit_0
	dw CossackSnowman11Exit_1
	dw CossackSnowman11Exit_2
	dw CossackSnowman11Exit_3
	dw CossackSnowman11Exit_4
	dw CossackSnowman11Exit_5
	dw CossackSnowman11Exit_6
	dw CossackSnowman11Exit_7
	begin_exits "CossackSnowman11"
	exit 7, 15, 0, SNOWMAN, 3, 120, 8, DOWN
	exit 8, 15, 0, SNOWMAN, 3, 120, 8, DOWN
	exit 6, 0, 0, SNOWMAN, 2, 64, 112, UP
	exit 7, 0, 0, SNOWMAN, 2, 64, 112, UP
	exit 0, 7, 0, SNOWMAN, 2, 112, 64, LEFT
	exit 0, 8, 0, SNOWMAN, 2, 112, 64, LEFT
	exit 15, 7, 0, SNOWMAN, 2, 8, 64, RIGHT
	exit 15, 8, 0, SNOWMAN, 2, 8, 64, RIGHT
	end_exits
CossackSnowman12ExitTable: ; 8d0c6 (23:8d0c6)
	db 6
	dw CossackSnowman12Exit_0
	dw CossackSnowman12Exit_1
	dw CossackSnowman12Exit_2
	dw CossackSnowman12Exit_3
	dw CossackSnowman12Exit_4
	dw CossackSnowman12Exit_5
	begin_exits "CossackSnowman12"
	exit 13, 31, 0, SNOWMAN, 0, 112, 8, DOWN
	exit 14, 31, 0, SNOWMAN, 0, 112, 8, DOWN
	exit 13, 0, 0, SNOWMAN, 1, 112, 240, UP
	exit 14, 0, 0, SNOWMAN, 1, 112, 240, UP
	exit 4, 0, 0, SNOWMAN, 13, 40, 240, UP
	exit 5, 0, 0, SNOWMAN, 13, 40, 240, UP
	end_exits
CossackSnowman13ExitTable: ; 8d103 (23:8d103)
	db 2
	dw CossackSnowman13Exit_0
	dw CossackSnowman13Exit_1
	begin_exits "CossackSnowman13"
	exit 4, 31, 0, SNOWMAN, 12, 40, 8, DOWN
	exit 5, 31, 0, SNOWMAN, 12, 40, 8, DOWN
	end_exits
CossackBoss0ExitTable: ; 8d118 (23:8d118)
	db 0
CavemanHub0ExitTable: ; 8d119 (23:8d119)
	db 10
	dw CavemanHub0Exit_0
	dw CavemanHub0Exit_1
	dw CavemanHub0Exit_2
	dw CavemanHub0Exit_3
	dw CavemanHub0Exit_4
	dw CavemanHub0Exit_5
	dw CavemanHub0Exit_6
	dw CavemanHub0Exit_7
	dw CavemanHub0Exit_8
	dw CavemanHub0Exit_9
	begin_exits "CavemanHub0"
	exit 7, 4, 0, ROBO, 0, 152, 240, UP
	exit 8, 4, 0, ROBO, 0, 152, 240, UP
	exit 25, 5, 0, GEARS, 0, 56, 240, UP
	exit 26, 5, 0, GEARS, 0, 56, 240, UP
	exit 31, 22, 0, WATER, 0, 8, 208, RIGHT
	exit 31, 23, 0, WATER, 0, 8, 208, RIGHT
	exit 17, 0, 0, BOSS, 0, 64, 64, UP
	exit 18, 0, 0, BOSS, 0, 64, 64, UP
	exit 12, 22, 1, 3, 104, 184
	exit 13, 22, 1, 3, 104, 184
	end_exits

; WORKAROUND: This room sucks. it has 2 extra exits, _5 and _6
; _5 overlaps with _4 by a byte. I removed the byte from the exit data
CavemanRobo0ExitTable: ; 8d17a (23:8d17a)
	db 5
	dw CavemanRobo0Exit_0
	dw CavemanRobo0Exit_1
	dw CavemanRobo0Exit_2
	dw CavemanRobo0Exit_3
	dw CavemanRobo0Exit_4
	dw (CavemanRobo0Exit_5-1)
	dw CavemanRobo0Exit_6
	begin_exits "CavemanRobo0"
	exit 18, 31, 0, HUB, 0, 64, 41, DOWN
	exit 19, 31, 0, HUB, 0, 64, 41, DOWN
	exit 20, 0, 0, ROBO, 2, 72, 240, UP
	exit 21, 0, 0, ROBO, 2, 72, 240, UP
	exit 7, 5, 2, ROBO, 6, 96, 72, RIGHT

	; the next two are broken, and technically start 1 byte earlier
	exit 0, 0, ROBO, 13, 224, 240, UP ; would start with a 3 (_4's "RIGHT"), but overlaps
	exit 4, 0, 0, ROBO, 13, 224, 240, UP
	end_exits
CavemanRobo1ExitTable: ; 8d1c0 (23:8d1c0)
	db 5
	dw CavemanRobo1Exit_0
	dw CavemanRobo1Exit_1
	dw CavemanRobo1Exit_2
	dw CavemanRobo1Exit_3
	dw CavemanRobo1Exit_4
	begin_exits "CavemanRobo1"
	exit 31, 19, 0, ROBO, 2, 8, 72, RIGHT
	exit 31, 20, 0, ROBO, 2, 8, 72, RIGHT
	exit 28, 9, 3, ROBO, 7, 128, 208, UP
	exit 3, 0, 0, ROBO, 13, 224, 240, UP
	exit 4, 0, 0, ROBO, 13, 224, 240, UP
	end_exits
CavemanRobo2ExitTable: ; 8d1f3 (23:8d1f3)
	db 6
	dw CavemanRobo2Exit_0
	dw CavemanRobo2Exit_1
	dw CavemanRobo2Exit_2
	dw CavemanRobo2Exit_3
	dw CavemanRobo2Exit_4
	dw CavemanRobo2Exit_5
	begin_exits "CavemanRobo2"
	exit 8, 31, 0, ROBO, 0, 168, 8, DOWN
	exit 9, 31, 0, ROBO, 0, 168, 8, DOWN
	exit 23, 0, 0, ROBO, 3, 208, 240, UP
	exit 24, 0, 0, ROBO, 3, 208, 240, UP
	exit 0, 8, 0, ROBO, 1, 240, 160, LEFT
	exit 0, 9, 0, ROBO, 1, 240, 160, LEFT
	end_exits
CavemanRobo3ExitTable: ; 8d230 (23:8d230)
	db 4
	dw CavemanRobo3Exit_0
	dw CavemanRobo3Exit_1
	dw CavemanRobo3Exit_2
	dw CavemanRobo3Exit_3
	begin_exits "CavemanRobo3"
	exit 25, 31, 0, ROBO, 2, 192, 8, DOWN
	exit 26, 31, 0, ROBO, 2, 192, 8, DOWN
	exit 24, 0, 0, ROBO, 4, 64, 112, UP
	exit 25, 0, 0, ROBO, 4, 64, 112, UP
	end_exits
CavemanRobo4ExitTable: ; 8d259 (23:8d259)
	db 8
	dw CavemanRobo4Exit_0
	dw CavemanRobo4Exit_1
	dw CavemanRobo4Exit_2
	dw CavemanRobo4Exit_3
	dw CavemanRobo4Exit_4
	dw CavemanRobo4Exit_5
	dw CavemanRobo4Exit_6
	dw CavemanRobo4Exit_7
	begin_exits "CavemanRobo4"
	exit 7, 15, 0, ROBO, 3, 200, 8, DOWN
	exit 8, 15, 0, ROBO, 3, 200, 8, DOWN
	exit 7, 0, 0, ROBO, 4, 64, 112, UP
	exit 8, 0, 0, ROBO, 4, 64, 112, UP
	exit 0, 6, 0, ROBO, 4, 112, 56, LEFT
	exit 0, 7, 0, ROBO, 4, 112, 56, LEFT
	exit 15, 6, 0, ROBO, 8, 8, 56, RIGHT
	exit 15, 7, 0, ROBO, 8, 8, 56, RIGHT
	end_exits
CavemanRobo5ExitTable: ; 8d2aa (23:8d2aa)
	db 2
	dw CavemanRobo5Exit_0
	dw CavemanRobo5Exit_1
	begin_exits "CavemanRobo5"
	exit 15, 31, 0, ROBO, 11, 64, 8, DOWN
	exit 16, 31, 0, ROBO, 11, 64, 8, DOWN
	end_exits
CavemanRobo6ExitTable: ; 8d2bf (23:8d2bf)
	db 1
	dw CavemanRobo6Exit_0
	begin_exits "CavemanRobo6"
	exit 13, 12, 2, ROBO, 0, 60, 48, DOWN
	end_exits
CavemanRobo7ExitTable: ; 8d2ca (23:8d2ca)
	db 0
CavemanRobo14ExitTable: ; 8d2cb (23:8d2cb)
	db 2
	dw CavemanRobo14Exit_0
	dw CavemanRobo14Exit_1
	begin_exits "CavemanRobo14"
	exit 31, 3, 0, ROBO, 13, 8, 32, RIGHT
	exit 31, 4, 0, ROBO, 13, 8, 32, RIGHT
	end_exits
CavemanRobo8ExitTable: ; 8d2e0 (23:8d2e0)
	db 8
	dw CavemanRobo8Exit_0
	dw CavemanRobo8Exit_1
	dw CavemanRobo8Exit_2
	dw CavemanRobo8Exit_3
	dw CavemanRobo8Exit_4
	dw CavemanRobo8Exit_5
	dw CavemanRobo8Exit_6
	dw CavemanRobo8Exit_7
	begin_exits "CavemanRobo8"
	exit 7, 15, 0, ROBO, 9, 64, 8, DOWN
	exit 8, 15, 0, ROBO, 9, 64, 8, DOWN
	exit 7, 0, 0, ROBO, 4, 64, 112, UP
	exit 8, 0, 0, ROBO, 4, 64, 112, UP
	exit 0, 6, 0, ROBO, 4, 112, 56, LEFT
	exit 0, 7, 0, ROBO, 4, 112, 56, LEFT
	exit 15, 6, 0, ROBO, 4, 8, 56, RIGHT
	exit 15, 7, 0, ROBO, 4, 8, 56, RIGHT
	end_exits
CavemanRobo9ExitTable: ; 8d331 (23:8d331)
	db 8
	dw CavemanRobo9Exit_0
	dw CavemanRobo9Exit_1
	dw CavemanRobo9Exit_2
	dw CavemanRobo9Exit_3
	dw CavemanRobo9Exit_4
	dw CavemanRobo9Exit_5
	dw CavemanRobo9Exit_6
	dw CavemanRobo9Exit_7
	begin_exits "CavemanRobo9"
	exit 7, 15, 0, ROBO, 10, 64, 8, DOWN
	exit 8, 15, 0, ROBO, 10, 64, 8, DOWN
	exit 7, 0, 0, ROBO, 4, 64, 112, UP
	exit 8, 0, 0, ROBO, 4, 64, 112, UP
	exit 0, 6, 0, ROBO, 4, 112, 56, LEFT
	exit 0, 7, 0, ROBO, 4, 112, 56, LEFT
	exit 15, 6, 0, ROBO, 4, 8, 56, RIGHT
	exit 15, 7, 0, ROBO, 4, 8, 56, RIGHT
	end_exits
CavemanRobo10ExitTable: ; 8d382 (23:8d382)
	db 8
	dw CavemanRobo10Exit_0
	dw CavemanRobo10Exit_1
	dw CavemanRobo10Exit_2
	dw CavemanRobo10Exit_3
	dw CavemanRobo10Exit_4
	dw CavemanRobo10Exit_5
	dw CavemanRobo10Exit_6
	dw CavemanRobo10Exit_7
	begin_exits "CavemanRobo10"
	exit 7, 15, 0, ROBO, 4, 64, 8, DOWN
	exit 8, 15, 0, ROBO, 4, 64, 8, DOWN
	exit 7, 0, 0, ROBO, 4, 64, 112, UP
	exit 8, 0, 0, ROBO, 4, 64, 112, UP
	exit 0, 6, 0, ROBO, 11, 112, 56, LEFT
	exit 0, 7, 0, ROBO, 11, 112, 56, LEFT
	exit 15, 6, 0, ROBO, 4, 8, 56, RIGHT
	exit 15, 7, 0, ROBO, 4, 8, 56, RIGHT
	end_exits
CavemanRobo11ExitTable: ; 8d3d3 (23:8d3d3)
	db 8
	dw CavemanRobo11Exit_0
	dw CavemanRobo11Exit_1
	dw CavemanRobo11Exit_2
	dw CavemanRobo11Exit_3
	dw CavemanRobo11Exit_4
	dw CavemanRobo11Exit_5
	dw CavemanRobo11Exit_6
	dw CavemanRobo11Exit_7
	begin_exits "CavemanRobo11"
	exit 7, 15, 0, ROBO, 4, 64, 8, DOWN
	exit 8, 15, 0, ROBO, 4, 64, 8, DOWN
	exit 7, 0, 0, ROBO, 5, 128, 240, UP
	exit 8, 0, 0, ROBO, 5, 128, 240, UP
	exit 0, 6, 0, ROBO, 4, 112, 56, LEFT
	exit 0, 7, 0, ROBO, 4, 112, 56, LEFT
	exit 15, 6, 0, ROBO, 4, 8, 56, RIGHT
	exit 15, 7, 0, ROBO, 4, 8, 56, RIGHT
	end_exits
CavemanRobo12ExitTable: ; 8d424 (23:8d424)
	db 8
	dw CavemanRobo12Exit_0
	dw CavemanRobo12Exit_1
	dw CavemanRobo12Exit_2
	dw CavemanRobo12Exit_3
	dw CavemanRobo12Exit_4
	dw CavemanRobo12Exit_5
	dw CavemanRobo12Exit_6
	dw CavemanRobo12Exit_7
	begin_exits "CavemanRobo12"
	exit 7, 15, 0, ROBO, 3, 200, 8, DOWN
	exit 8, 15, 0, ROBO, 3, 200, 8, DOWN
	exit 7, 0, 0, ROBO, 5, 128, 240, UP
	exit 8, 0, 0, ROBO, 5, 128, 240, UP
	exit 0, 6, 0, ROBO, 4, 112, 56, LEFT
	exit 0, 7, 0, ROBO, 4, 112, 56, LEFT
	exit 15, 6, 0, ROBO, 4, 8, 56, RIGHT
	exit 15, 7, 0, ROBO, 4, 8, 56, RIGHT
	end_exits
CavemanRobo13ExitTable: ; 8d475 (23:8d475)
	db 4
	dw CavemanRobo13Exit_0
	dw CavemanRobo13Exit_1
	dw CavemanRobo13Exit_2
	dw CavemanRobo13Exit_3
	begin_exits "CavemanRobo13"
	exit 27, 31, 0, ROBO, 1, 32, 8, DOWN
	exit 28, 31, 0, ROBO, 1, 32, 8, DOWN
	exit 0, 3, 0, ROBO, 14, 240, 32, LEFT
	exit 0, 4, 0, ROBO, 14, 240, 32, LEFT
	end_exits
CavemanGears0ExitTable: ; 8d49e (23:8d49e)
	db 9
	dw CavemanGears0Exit_0
	dw CavemanGears0Exit_1
	dw CavemanGears0Exit_2
	dw CavemanGears0Exit_3
	dw CavemanGears0Exit_4
	dw CavemanGears0Exit_5
	dw CavemanGears0Exit_6
	dw CavemanGears0Exit_7
	dw CavemanGears0Exit_8
	begin_exits "CavemanGears0"
	exit 6, 31, 0, HUB, 0, 208, 49, DOWN
	exit 7, 31, 0, HUB, 0, 208, 49, DOWN
	exit 0, 6, 0, GEARS, 4, 240, 208, LEFT
	exit 0, 7, 0, GEARS, 4, 240, 208, LEFT
	exit 13, 0, 0, GEARS, 1, 64, 112, UP
	exit 14, 0, 0, GEARS, 1, 64, 112, UP
	exit 31, 24, 0, GEARS, 2, 8, 112, RIGHT
	exit 31, 25, 0, GEARS, 2, 8, 112, RIGHT
	exit 28, 10, 3, GEARS, 7, 128, 208, UP
	end_exits
CavemanGears1ExitTable: ; 8d4f9 (23:8d4f9)
	db 8
	dw CavemanGears1Exit_0
	dw CavemanGears1Exit_1
	dw CavemanGears1Exit_2
	dw CavemanGears1Exit_3
	dw CavemanGears1Exit_4
	dw CavemanGears1Exit_5
	dw CavemanGears1Exit_6
	dw CavemanGears1Exit_7
	begin_exits "CavemanGears1"
	exit 7, 15, 0, GEARS, 0, 112, 16, DOWN
	exit 8, 15, 0, GEARS, 0, 112, 16, DOWN
	exit 7, 0, 0, GEARS, 1, 64, 112, UP
	exit 8, 0, 0, GEARS, 1, 64, 112, UP
	exit 0, 6, 0, GEARS, 1, 112, 56, LEFT
	exit 0, 7, 0, GEARS, 1, 112, 56, LEFT
	exit 15, 6, 0, GEARS, 8, 8, 56, RIGHT
	exit 15, 7, 0, GEARS, 8, 8, 56, RIGHT
	end_exits
CavemanGears2ExitTable: ; 8d54a (23:8d54a)
	db 7
	dw CavemanGears2Exit_0
	dw CavemanGears2Exit_1
	dw CavemanGears2Exit_2
	dw CavemanGears2Exit_3
	dw CavemanGears2Exit_4
	dw CavemanGears2Exit_5
	dw CavemanGears2Exit_6
	begin_exits "CavemanGears2"
	exit 0, 13, 0, GEARS, 0, 240, 200, LEFT
	exit 0, 14, 0, GEARS, 0, 240, 200, LEFT
	exit 31, 22, 0, GEARS, 3, 8, 176, RIGHT
	exit 31, 23, 0, GEARS, 3, 8, 176, RIGHT
	exit 22, 4, 2, GEARS, 6, 96, 40, DOWN
	exit 26, 0, 0, GEARS, 12, 216, 240, UP
	exit 27, 0, 0, GEARS, 12, 216, 240, UP
	end_exits
CavemanGears3ExitTable: ; 8d591 (23:8d591)
	db 2
	dw CavemanGears3Exit_0
	dw CavemanGears3Exit_1
	begin_exits "CavemanGears3"
	exit 0, 21, 0, GEARS, 2, 240, 184, LEFT
	exit 0, 22, 0, GEARS, 2, 240, 184, LEFT
	end_exits
CavemanGears4ExitTable: ; 8d5a6 (23:8d5a6)
	db 2
	dw CavemanGears4Exit_0
	dw CavemanGears4Exit_1
	begin_exits "CavemanGears4"
	exit 31, 25, 0, GEARS, 0, 8, 56, RIGHT
	exit 31, 26, 0, GEARS, 0, 8, 56, RIGHT
	end_exits
CavemanGears5ExitTable: ; 8d5bb (23:8d5bb)
	db 2
	dw CavemanGears5Exit_0
	dw CavemanGears5Exit_1
	begin_exits "CavemanGears5"
	exit 14, 30, 0, GEARS, 11, 64, 8, DOWN
	exit 15, 30, 0, GEARS, 11, 64, 8, DOWN
	end_exits
CavemanGears6ExitTable: ; 8d5d0 (23:8d5d0)
	db 1
	dw CavemanGears6Exit_0
	begin_exits "CavemanGears6"
	exit 3, 12, 2, GEARS, 2, 176, 40, DOWN
	end_exits
CavemanGears7ExitTable: ; 8d5db (23:8d5db)
	db 0
CavemanGears8ExitTable: ; 8d5dc (23:8d5dc)
	db 8
	dw CavemanGears8Exit_0
	dw CavemanGears8Exit_1
	dw CavemanGears8Exit_2
	dw CavemanGears8Exit_3
	dw CavemanGears8Exit_4
	dw CavemanGears8Exit_5
	dw CavemanGears8Exit_6
	dw CavemanGears8Exit_7
	begin_exits "CavemanGears8"
	exit 7, 15, 0, GEARS, 1, 64, 8, DOWN
	exit 8, 15, 0, GEARS, 1, 64, 8, DOWN
	exit 7, 0, 0, GEARS, 1, 64, 112, UP
	exit 8, 0, 0, GEARS, 1, 64, 112, UP
	exit 0, 6, 0, GEARS, 1, 112, 56, LEFT
	exit 0, 7, 0, GEARS, 1, 112, 56, LEFT
	exit 15, 6, 0, GEARS, 9, 8, 56, RIGHT
	exit 15, 7, 0, GEARS, 9, 8, 56, RIGHT
	end_exits
CavemanGears9ExitTable: ; 8d62d (23:8d62d)
	db 8
	dw CavemanGears9Exit_0
	dw CavemanGears9Exit_1
	dw CavemanGears9Exit_2
	dw CavemanGears9Exit_3
	dw CavemanGears9Exit_4
	dw CavemanGears9Exit_5
	dw CavemanGears9Exit_6
	dw CavemanGears9Exit_7
	begin_exits "CavemanGears9"
	exit 7, 15, 0, GEARS, 1, 64, 8, DOWN
	exit 8, 15, 0, GEARS, 1, 64, 8, DOWN
	exit 7, 0, 0, GEARS, 10, 64, 112, UP
	exit 8, 0, 0, GEARS, 10, 64, 112, UP
	exit 0, 6, 0, GEARS, 1, 112, 56, LEFT
	exit 0, 7, 0, GEARS, 1, 112, 56, LEFT
	exit 15, 6, 0, GEARS, 1, 8, 56, RIGHT
	exit 15, 7, 0, GEARS, 1, 8, 56, RIGHT
	end_exits
CavemanGears10ExitTable: ; 8d67e (23:8d67e)
	db 8
	dw CavemanGears10Exit_0
	dw CavemanGears10Exit_1
	dw CavemanGears10Exit_2
	dw CavemanGears10Exit_3
	dw CavemanGears10Exit_4
	dw CavemanGears10Exit_5
	dw CavemanGears10Exit_6
	dw CavemanGears10Exit_7
	begin_exits "CavemanGears10"
	exit 7, 15, 0, GEARS, 1, 64, 8, DOWN
	exit 8, 15, 0, GEARS, 1, 64, 8, DOWN
	exit 7, 0, 0, GEARS, 1, 64, 112, UP
	exit 8, 0, 0, GEARS, 1, 64, 112, UP
	exit 0, 6, 0, GEARS, 1, 112, 56, LEFT
	exit 0, 7, 0, GEARS, 1, 112, 56, LEFT
	exit 15, 6, 0, GEARS, 11, 8, 56, RIGHT
	exit 15, 7, 0, GEARS, 11, 8, 56, RIGHT
	end_exits
CavemanGears11ExitTable: ; 8d6cf (23:8d6cf)
	db 8
	dw CavemanGears11Exit_0
	dw CavemanGears11Exit_1
	dw CavemanGears11Exit_2
	dw CavemanGears11Exit_3
	dw CavemanGears11Exit_4
	dw CavemanGears11Exit_5
	dw CavemanGears11Exit_6
	dw CavemanGears11Exit_7
	begin_exits "CavemanGears11"
	exit 7, 15, 0, GEARS, 1, 64, 8, DOWN
	exit 8, 15, 0, GEARS, 1, 64, 8, DOWN
	exit 7, 0, 0, GEARS, 5, 120, 232, UP
	exit 8, 0, 0, GEARS, 5, 120, 232, UP
	exit 0, 6, 0, GEARS, 1, 112, 56, LEFT
	exit 0, 7, 0, GEARS, 1, 112, 56, LEFT
	exit 15, 6, 0, GEARS, 1, 8, 56, RIGHT
	exit 15, 7, 0, GEARS, 1, 8, 56, RIGHT
	end_exits
CavemanGears12ExitTable: ; 8d720 (23:8d720)
	db 4
	dw CavemanGears12Exit_0
	dw CavemanGears12Exit_1
	dw CavemanGears12Exit_2
	dw CavemanGears12Exit_3
	begin_exits "CavemanGears12"
	exit 26, 31, 0, GEARS, 2, 216, 8, DOWN
	exit 27, 31, 0, GEARS, 2, 216, 8, DOWN
	exit 18, 0, 0, GEARS, 13, 144, 240, UP
	exit 19, 0, 0, GEARS, 13, 144, 240, UP
	end_exits
CavemanGears13ExitTable: ; 8d749 (23:8d749)
	db 2
	dw CavemanGears13Exit_0
	dw CavemanGears13Exit_1
	begin_exits "CavemanGears13"
	exit 17, 31, 0, GEARS, 12, 152, 8, DOWN
	exit 18, 31, 0, GEARS, 12, 152, 8, DOWN
	end_exits
CavemanWater0ExitTable: ; 8d75e (23:8d75e)
	db 6
	dw CavemanWater0Exit_0
	dw CavemanWater0Exit_1
	dw CavemanWater0Exit_2
	dw CavemanWater0Exit_3
	dw CavemanWater0Exit_4
	dw CavemanWater0Exit_5
	begin_exits "CavemanWater0"
	exit 0, 25, 0, HUB, 0, 240, 184, LEFT
	exit 0, 26, 0, HUB, 0, 240, 184, LEFT
	exit 3, 0, 0, WATER, 1, 32, 240, UP
	exit 4, 0, 0, WATER, 1, 32, 240, UP
	exit 27, 0, 0, WATER, 1, 224, 240, UP
	exit 28, 0, 0, WATER, 1, 224, 240, UP
	end_exits
CavemanWater1ExitTable: ; 8d79b (23:8d79b)
	db 11
	dw CavemanWater1Exit_0
	dw CavemanWater1Exit_1
	dw CavemanWater1Exit_2
	dw CavemanWater1Exit_3
	dw CavemanWater1Exit_4
	dw CavemanWater1Exit_5
	dw CavemanWater1Exit_6
	dw CavemanWater1Exit_7
	dw CavemanWater1Exit_8
	dw CavemanWater1Exit_9
	dw CavemanWater1Exit_10
	begin_exits "CavemanWater1"
	exit 3, 31, 0, WATER, 0, 32, 8, DOWN
	exit 4, 31, 0, WATER, 0, 32, 8, DOWN
	exit 27, 31, 0, WATER, 0, 224, 8, DOWN
	exit 28, 31, 0, WATER, 0, 224, 8, DOWN
	exit 8, 0, 0, WATER, 3, 96, 240, UP
	exit 9, 0, 0, WATER, 3, 96, 240, UP
	exit 31, 7, 0, WATER, 2, 8, 64, RIGHT
	exit 31, 8, 0, WATER, 2, 8, 64, RIGHT
	exit 24, 13, 3, WATER, 7, 56, 200, UP
	exit 13, 31, 0, WATER, 9, 192, 40, DOWN
	exit 14, 31, 0, WATER, 9, 192, 40, DOWN
	end_exits
CavemanWater2ExitTable: ; 8d80a (23:8d80a)
	db 6
	dw CavemanWater2Exit_0
	dw CavemanWater2Exit_1
	dw CavemanWater2Exit_2
	dw CavemanWater2Exit_3
	dw CavemanWater2Exit_4
	dw CavemanWater2Exit_5
	begin_exits "CavemanWater2"
	exit 0, 7, 0, WATER, 1, 240, 64, LEFT
	exit 0, 8, 0, WATER, 1, 240, 64, LEFT
	exit 11, 0, 0, WATER, 4, 96, 240, UP
	exit 12, 0, 0, WATER, 4, 96, 240, UP
	exit 27, 0, 0, WATER, 9, 72, 240, UP
	exit 28, 0, 0, WATER, 9, 72, 240, UP
	end_exits
CavemanWater3ExitTable: ; 8d847 (23:8d847)
	db 7
	dw CavemanWater3Exit_0
	dw CavemanWater3Exit_1
	dw CavemanWater3Exit_2
	dw CavemanWater3Exit_3
	dw CavemanWater3Exit_4
	dw CavemanWater3Exit_5
	dw CavemanWater3Exit_6
	begin_exits "CavemanWater3"
	exit 11, 31, 0, WATER, 1, 72, 8, DOWN
	exit 12, 31, 0, WATER, 1, 72, 8, DOWN
	exit 31, 26, 0, WATER, 4, 8, 216, RIGHT
	exit 31, 27, 0, WATER, 4, 8, 216, RIGHT
	exit 27, 11, 2, WATER, 6, 32, 40, DOWN
	exit 22, 0, 0, WATER, 11, 184, 240, UP
	exit 23, 0, 0, WATER, 11, 184, 240, UP
	end_exits
CavemanWater4ExitTable: ; 8d88e (23:8d88e)
	db 8
	dw CavemanWater4Exit_0
	dw CavemanWater4Exit_1
	dw CavemanWater4Exit_2
	dw CavemanWater4Exit_3
	dw CavemanWater4Exit_4
	dw CavemanWater4Exit_5
	dw CavemanWater4Exit_6
	dw CavemanWater4Exit_7
	begin_exits "CavemanWater4"
	exit 0, 26, 0, WATER, 3, 240, 216, LEFT
	exit 0, 27, 0, WATER, 3, 240, 216, LEFT
	exit 11, 31, 0, WATER, 2, 96, 8, DOWN
	exit 12, 31, 0, WATER, 2, 96, 8, DOWN
	exit 16, 0, 0, WATER, 5, 136, 240, UP
	exit 17, 0, 0, WATER, 5, 136, 240, UP
	exit 2, 0, 0, WATER, 9, 200, 240, UP
	exit 3, 0, 0, WATER, 9, 200, 240, UP
	end_exits
CavemanWater5ExitTable: ; 8d8df (23:8d8df)
	db 4
	dw CavemanWater5Exit_0
	dw CavemanWater5Exit_1
	dw CavemanWater5Exit_2
	dw CavemanWater5Exit_3
	begin_exits "CavemanWater5"
	exit 16, 31, 0, WATER, 4, 136, 8, DOWN
	exit 17, 31, 0, WATER, 4, 136, 8, DOWN
	exit 7, 31, 0, WATER, 9, 136, 40, DOWN
	exit 8, 31, 0, WATER, 9, 136, 40, DOWN
	end_exits
CavemanWater6ExitTable: ; 8d908 (23:8d908)
	db 1
	dw CavemanWater6Exit_0
	begin_exits "CavemanWater6"
	exit 3, 12, 2, WATER, 3, 216, 96, DOWN
	end_exits
CavemanWater7ExitTable: ; 8d913 (23:8d913)
	db 0
CavemanWater10ExitTable: ; 8d914 (23:8d914)
	db 6
	dw CavemanWater10Exit_0
	dw CavemanWater10Exit_1
	dw CavemanWater10Exit_2
	dw CavemanWater10Exit_3
	dw CavemanWater10Exit_4
	dw CavemanWater10Exit_5
	begin_exits "CavemanWater10"
	exit 22, 31, 0, WATER, 3, 184, 8, DOWN
	exit 23, 31, 0, WATER, 3, 184, 8, DOWN
	exit 31, 5, 0, WATER, 9, 8, 48, RIGHT
	exit 31, 6, 0, WATER, 9, 8, 48, RIGHT
	exit 4, 31, 0, WATER, 9, 72, 40, DOWN
	exit 5, 31, 0, WATER, 9, 72, 40, DOWN
	end_exits
CavemanWater8ExitTable: ; 8d951 (23:8d951)
	db 14
	dw CavemanWater8Exit_0
	dw CavemanWater8Exit_1
	dw CavemanWater8Exit_2
	dw CavemanWater8Exit_3
	dw CavemanWater8Exit_4
	dw CavemanWater8Exit_5
	dw CavemanWater8Exit_6
	dw CavemanWater8Exit_7
	dw CavemanWater8Exit_8
	dw CavemanWater8Exit_9
	dw CavemanWater8Exit_10
	dw CavemanWater8Exit_11
	dw CavemanWater8Exit_12
	dw CavemanWater8Exit_13
	begin_exits "CavemanWater8"
	exit 0, 5, 0, WATER, 11, 240, 48, LEFT
	exit 0, 6, 0, WATER, 11, 240, 48, LEFT
	exit 8, 4, 0, WATER, 11, 40, 240, UP
	exit 9, 4, 0, WATER, 11, 40, 240, UP
	exit 16, 4, 0, WATER, 5, 64, 240, UP
	exit 17, 4, 0, WATER, 5, 64, 240, UP
	exit 23, 4, 0, WATER, 1, 112, 240, UP
	exit 24, 4, 0, WATER, 1, 112, 240, UP
	exit 8, 31, 0, WATER, 2, 224, 8, DOWN
	exit 9, 31, 0, WATER, 2, 224, 8, DOWN
	exit 16, 31, 0, WATER, 10, 136, 8, DOWN
	exit 17, 31, 0, WATER, 10, 136, 8, DOWN
	exit 24, 31, 0, WATER, 4, 24, 8, DOWN
	exit 25, 31, 0, WATER, 4, 24, 8, DOWN
	end_exits
CavemanWater9ExitTable: ; 8d9de (23:8d9de)
	db 2
	dw CavemanWater9Exit_0
	dw CavemanWater9Exit_1
	begin_exits "CavemanWater9"
	exit 16, 0, 0, WATER, 9, 136, 240, UP
	exit 17, 0, 0, WATER, 9, 136, 240, UP
	end_exits
CavemanBoss0ExitTable: ; 8d9f3 (23:8d9f3)
	db 0
IncaHub0ExitTable: ; 8d9f4 (23:8d9f4)
	db 10
	dw IncaHub0Exit_0
	dw IncaHub0Exit_1
	dw IncaHub0Exit_2
	dw IncaHub0Exit_3
	dw IncaHub0Exit_4
	dw IncaHub0Exit_5
	dw IncaHub0Exit_6
	dw IncaHub0Exit_7
	dw IncaHub0Exit_8
	dw IncaHub0Exit_9
	begin_exits "IncaHub0"
	exit 31, 20, 0, LETTER, 0, 8, 224, RIGHT
	exit 31, 21, 0, LETTER, 0, 8, 224, RIGHT
	exit 0, 20, 0, MAYOR, 0, 240, 200, LEFT
	exit 0, 21, 0, MAYOR, 0, 240, 200, LEFT
	exit 15, 0, 0, JEWEL, 1, 128, 240, UP
	exit 16, 0, 0, JEWEL, 1, 128, 240, UP
	exit 15, 23, 4, BOSS, 0, 64, 104, UP
	exit 16, 23, 4, BOSS, 0, 64, 104, UP
	exit 15, 11, 1, 3, 128, 96
	exit 16, 11, 1, 3, 128, 96
	end_exits
IncaLetter0ExitTable: ; 8da55 (23:8da55)
	db 6
	dw IncaLetter0Exit_0
	dw IncaLetter0Exit_1
	dw IncaLetter0Exit_2
	dw IncaLetter0Exit_3
	dw IncaLetter0Exit_4
	dw IncaLetter0Exit_5
	begin_exits "IncaLetter0"
	exit 0, 27, 0, HUB, 0, 240, 168, LEFT
	exit 0, 28, 0, HUB, 0, 240, 168, LEFT
	exit 21, 0, 0, LETTER, 1, 72, 240, UP
	exit 22, 0, 0, LETTER, 1, 72, 240, UP
	exit 31, 25, 0, LETTER, 2, 8, 224, RIGHT
	exit 31, 26, 0, LETTER, 2, 8, 224, RIGHT
	end_exits
IncaLetter1ExitTable: ; 8da92 (23:8da92)
	db 8
	dw IncaLetter1Exit_0
	dw IncaLetter1Exit_1
	dw IncaLetter1Exit_2
	dw IncaLetter1Exit_3
	dw IncaLetter1Exit_4
	dw IncaLetter1Exit_5
	dw IncaLetter1Exit_6
	dw IncaLetter1Exit_7
	begin_exits "IncaLetter1"
	exit 8, 31, 0, LETTER, 0, 176, 8, DOWN
	exit 9, 31, 0, LETTER, 0, 176, 8, DOWN
	exit 20, 0, 0, LETTER, 3, 72, 240, UP
	exit 21, 0, 0, LETTER, 3, 72, 240, UP
	exit 0, 20, 0, LETTER, 8, 240, 112, LEFT
	exit 0, 21, 0, LETTER, 8, 240, 112, LEFT
	exit 7, 0, 0, LETTER, 12, 56, 240, UP
	exit 8, 0, 0, LETTER, 12, 56, 240, UP
	end_exits
IncaLetter2ExitTable: ; 8dae3 (23:8dae3)
	db 2
	dw IncaLetter2Exit_0
	dw IncaLetter2Exit_1
	begin_exits "IncaLetter2"
	exit 0, 27, 0, LETTER, 0, 240, 208, LEFT
	exit 0, 28, 0, LETTER, 0, 240, 208, LEFT
	end_exits
IncaLetter3ExitTable: ; 8daf8 (23:8daf8)
	db 5
	dw IncaLetter3Exit_0
	dw IncaLetter3Exit_1
	dw IncaLetter3Exit_2
	dw IncaLetter3Exit_3
	dw IncaLetter3Exit_4
	begin_exits "IncaLetter3"
	exit 8, 31, 0, LETTER, 1, 168, 8, DOWN
	exit 9, 31, 0, LETTER, 1, 168, 8, DOWN
	exit 31, 6, 0, LETTER, 4, 8, 216, RIGHT
	exit 31, 7, 0, LETTER, 4, 8, 216, RIGHT
	exit 29, 18, 2, LETTER, 6, 96, 40, DOWN
	end_exits
IncaLetter4ExitTable: ; 8db2b (23:8db2b)
	db 4
	dw IncaLetter4Exit_0
	dw IncaLetter4Exit_1
	dw IncaLetter4Exit_2
	dw IncaLetter4Exit_3
	begin_exits "IncaLetter4"
	exit 0, 26, 0, LETTER, 3, 240, 56, LEFT
	exit 0, 27, 0, LETTER, 3, 240, 56, LEFT
	exit 25, 0, 0, LETTER, 5, 40, 240, UP
	exit 26, 0, 0, LETTER, 5, 40, 240, UP
	end_exits
IncaLetter5ExitTable: ; 8db54 (23:8db54)
	db 3
	dw IncaLetter5Exit_0
	dw IncaLetter5Exit_1
	dw IncaLetter5Exit_2
	begin_exits "IncaLetter5"
	exit 4, 31, 0, LETTER, 4, 208, 8, DOWN
	exit 5, 31, 0, LETTER, 4, 208, 8, DOWN
	exit 27, 11, 3, LETTER, 7, 128, 208, UP
	end_exits
IncaLetter6ExitTable: ; 8db73 (23:8db73)
	db 1
	dw IncaLetter6Exit_0
	begin_exits "IncaLetter6"
	exit 2, 11, 2, LETTER, 3, 232, 152, DOWN
	end_exits
IncaLetter7ExitTable: ; 8db7e (23:8db7e)
	db 0
IncaLetter8ExitTable: ; 8db7f (23:8db7f)
	db 8
	dw IncaLetter8Exit_0
	dw IncaLetter8Exit_1
	dw IncaLetter8Exit_2
	dw IncaLetter8Exit_3
	dw IncaLetter8Exit_4
	dw IncaLetter8Exit_5
	dw IncaLetter8Exit_6
	dw IncaLetter8Exit_7
	begin_exits "IncaLetter8"
	exit 28, 0, 0, LETTER, 9, 128, 232, UP
	exit 29, 0, 0, LETTER, 9, 128, 232, UP
	exit 10, 30, 0, LETTER, 10, 168, 8, DOWN
	exit 11, 30, 0, LETTER, 10, 168, 8, DOWN
	exit 0, 13, 0, LETTER, 11, 240, 112, LEFT
	exit 0, 14, 0, LETTER, 11, 240, 112, LEFT
	exit 31, 13, 0, LETTER, 1, 8, 168, RIGHT
	exit 31, 14, 0, LETTER, 1, 8, 168, RIGHT
	end_exits
IncaLetter9ExitTable: ; 8dbd0 (23:8dbd0)
	db 2
	dw IncaLetter9Exit_0
	dw IncaLetter9Exit_1
	begin_exits "IncaLetter9"
	exit 15, 30, 0, LETTER, 8, 232, 8, DOWN
	exit 16, 30, 0, LETTER, 8, 232, 8, DOWN
	end_exits
IncaLetter10ExitTable: ; 8dbe5 (23:8dbe5)
	db 4
	dw IncaLetter10Exit_0
	dw IncaLetter10Exit_1
	dw IncaLetter10Exit_2
	dw IncaLetter10Exit_3
	begin_exits "IncaLetter10"
	exit 20, 0, 0, LETTER, 8, 88, 232, UP
	exit 21, 0, 0, LETTER, 8, 88, 232, UP
	exit 0, 2, 0, LETTER, 11, 240, 224, LEFT
	exit 0, 3, 0, LETTER, 11, 240, 224, LEFT
	end_exits
IncaLetter11ExitTable: ; 8dc0e (23:8dc0e)
	db 4
	dw IncaLetter11Exit_0
	dw IncaLetter11Exit_1
	dw IncaLetter11Exit_2
	dw IncaLetter11Exit_3
	begin_exits "IncaLetter11"
	exit 31, 27, 0, LETTER, 10, 8, 24, RIGHT
	exit 31, 28, 0, LETTER, 10, 8, 24, RIGHT
	exit 31, 13, 0, LETTER, 8, 8, 112, RIGHT
	exit 31, 14, 0, LETTER, 8, 8, 112, RIGHT
	end_exits
IncaLetter12ExitTable: ; 8dc37 (23:8dc37)
	db 4
	dw IncaLetter12Exit_0
	dw IncaLetter12Exit_1
	dw IncaLetter12Exit_2
	dw IncaLetter12Exit_3
	begin_exits "IncaLetter12"
	exit 6, 31, 0, LETTER, 1, 64, 8, DOWN
	exit 7, 31, 0, LETTER, 1, 64, 8, DOWN
	exit 15, 0, 0, LETTER, 13, 128, 240, UP
	exit 16, 0, 0, LETTER, 13, 128, 240, UP
	end_exits
IncaLetter13ExitTable: ; 8dc60 (23:8dc60)
	db 2
	dw IncaLetter13Exit_0
	dw IncaLetter13Exit_1
	begin_exits "IncaLetter13"
	exit 15, 31, 0, LETTER, 12, 128, 8, DOWN
	exit 16, 31, 0, LETTER, 12, 128, 8, DOWN
	end_exits
IncaMayor0ExitTable: ; 8dc75 (23:8dc75)
	db 7
	dw IncaMayor0Exit_0
	dw IncaMayor0Exit_1
	dw IncaMayor0Exit_2
	dw IncaMayor0Exit_3
	dw IncaMayor0Exit_4
	dw IncaMayor0Exit_5
	dw IncaMayor0Exit_6
	begin_exits "IncaMayor0"
	exit 31, 24, 0, HUB, 0, 8, 168, RIGHT
	exit 31, 25, 0, HUB, 0, 8, 168, RIGHT
	exit 24, 9, 0, MAYOR, 2, 200, 240, UP
	exit 25, 9, 0, MAYOR, 2, 200, 240, UP
	exit 16, 10, 2, MAYOR, 6, 24, 48, DOWN
	exit 11, 9, 0, MAYOR, 10, 128, 240, UP
	exit 12, 9, 0, MAYOR, 10, 128, 240, UP
	end_exits
IncaMayor1ExitTable: ; 8dcbc (23:8dcbc)
	db 5
	dw IncaMayor1Exit_0
	dw IncaMayor1Exit_1
	dw IncaMayor1Exit_2
	dw IncaMayor1Exit_3
	dw IncaMayor1Exit_4
	begin_exits "IncaMayor1"
	exit 31, 23, 0, MAYOR, 2, 8, 160, RIGHT
	exit 31, 24, 0, MAYOR, 2, 8, 160, RIGHT
	exit 0, 27, 0, MAYOR, 3, 240, 224, LEFT
	exit 0, 28, 0, MAYOR, 3, 240, 224, LEFT
	exit 6, 16, 3, MAYOR, 7, 120, 208, RIGHT
	end_exits
IncaMayor2ExitTable: ; 8dcef (23:8dcef)
	db 10
	dw IncaMayor2Exit_0
	dw IncaMayor2Exit_1
	dw IncaMayor2Exit_2
	dw IncaMayor2Exit_3
	dw IncaMayor2Exit_4
	dw IncaMayor2Exit_5
	dw IncaMayor2Exit_6
	dw IncaMayor2Exit_7
	dw IncaMayor2Exit_8
	dw IncaMayor2Exit_9
	begin_exits "IncaMayor2"
	exit 24, 31, 0, MAYOR, 0, 200, 80, DOWN
	exit 25, 31, 0, MAYOR, 0, 200, 80, DOWN
	exit 0, 19, 0, MAYOR, 1, 240, 192, LEFT
	exit 0, 20, 0, MAYOR, 1, 240, 192, LEFT
	exit 31, 5, 0, MAYOR, 3, 8, 56, RIGHT
	exit 31, 6, 0, MAYOR, 3, 8, 56, RIGHT
	exit 17, 0, 0, MAYOR, 4, 128, 240, UP
	exit 18, 0, 0, MAYOR, 4, 128, 240, UP
	exit 7, 31, 0, MAYOR, 10, 128, 40, DOWN
	exit 8, 31, 0, MAYOR, 10, 128, 40, DOWN
	end_exits
IncaMayor3ExitTable: ; 8dd54 (23:8dd54)
	db 6
	dw IncaMayor3Exit_0
	dw IncaMayor3Exit_1
	dw IncaMayor3Exit_2
	dw IncaMayor3Exit_3
	dw IncaMayor3Exit_4
	dw IncaMayor3Exit_5
	begin_exits "IncaMayor3"
	exit 0, 6, 0, MAYOR, 2, 240, 48, DOWN
	exit 0, 7, 0, MAYOR, 2, 240, 48, DOWN
	exit 31, 27, 0, MAYOR, 1, 8, 224, RIGHT
	exit 31, 28, 0, MAYOR, 1, 8, 224, RIGHT
	exit 18, 0, 0, MAYOR, 8, 152, 240, UP
	exit 19, 0, 0, MAYOR, 8, 152, 240, UP
	end_exits
IncaMayor4ExitTable: ; 8dd91 (23:8dd91)
	db 4
	dw IncaMayor4Exit_0
	dw IncaMayor4Exit_1
	dw IncaMayor4Exit_2
	dw IncaMayor4Exit_3
	begin_exits "IncaMayor4"
	exit 15, 31, 0, MAYOR, 2, 144, 8, DOWN
	exit 16, 31, 0, MAYOR, 2, 144, 8, DOWN
	exit 15, 0, 0, MAYOR, 5, 128, 240, UP
	exit 16, 0, 0, MAYOR, 5, 128, 240, UP
	end_exits
IncaMayor5ExitTable: ; 8ddba (23:8ddba)
	db 2
	dw IncaMayor5Exit_0
	dw IncaMayor5Exit_1
	begin_exits "IncaMayor5"
	exit 15, 31, 0, MAYOR, 4, 128, 8, DOWN
	exit 16, 31, 0, MAYOR, 4, 128, 8, DOWN
	end_exits
IncaMayor6ExitTable: ; 8ddcf (23:8ddcf)
	db 1
	dw IncaMayor6Exit_0
	begin_exits "IncaMayor6"
	exit 7, 12, 2, MAYOR, 0, 128, 88, DOWN
	end_exits
IncaMayor7ExitTable: ; 8ddda (23:8ddda)
	db 0
IncaMayor8ExitTable: ; 8dddb (23:8dddb)
	db 4
	dw IncaMayor8Exit_0
	dw IncaMayor8Exit_1
	dw IncaMayor8Exit_2
	dw IncaMayor8Exit_3
	begin_exits "IncaMayor8"
	exit 18, 31, 0, MAYOR, 3, 152, 8, DOWN
	exit 19, 31, 0, MAYOR, 3, 152, 8, DOWN
	exit 28, 0, 0, MAYOR, 9, 152, 240, UP
	exit 29, 0, 0, MAYOR, 9, 152, 240, UP
	end_exits

; WORKAROUND: it says 4 exits, 2 of them are garbage.
; Fortunately the data they link to is impossible for croc to step on
; So nothing actually happens
IncaMayor9ExitTable: ; 8de04 (23:5e04)
	db 4
	dw IncaMayor9Exit_0
	dw IncaMayor9Exit_1
	begin_exits "IncaMayor9"
	exit 18, 31, 0, MAYOR, 8, 232, 8, DOWN
	exit 19, 31, 0, MAYOR, 8, 232, 8, DOWN
	end_exits
IncaMayor10ExitTable: ; 8de19 (23:5e19)
	db 12
	dw IncaMayor10Exit_0
	dw IncaMayor10Exit_1
	dw IncaMayor10Exit_2
	dw IncaMayor10Exit_3
	dw IncaMayor10Exit_4
	dw IncaMayor10Exit_5
	dw IncaMayor10Exit_6
	dw IncaMayor10Exit_7
	dw IncaMayor10Exit_8
	dw IncaMayor10Exit_9
	dw IncaMayor10Exit_10
	dw IncaMayor10Exit_11
	begin_exits "IncaMayor10"
	exit 15, 31, 0, MAYOR, 0, 96, 80, DOWN
	exit 16, 31, 0, MAYOR, 0, 96, 80, DOWN
	exit 15, 4, 0, MAYOR, 2, 64, 240, UP
	exit 16, 4, 0, MAYOR, 2, 64, 240, UP
	exit 26, 4, 0, MAYOR, 10, 208, 240, UP
	exit 27, 4, 0, MAYOR, 10, 208, 240, UP
	exit 4, 4, 0, MAYOR, 10, 48, 240, UP
	exit 5, 4, 0, MAYOR, 10, 48, 240, UP
	exit 25, 31, 0, MAYOR, 10, 216, 40, DOWN
	exit 26, 31, 0, MAYOR, 10, 216, 40, DOWN
	exit 5, 31, 0, MAYOR, 10, 40, 40, DOWN
	exit 6, 31, 0, MAYOR, 10, 40, 40, DOWN
	end_exits
IncaJewel0ExitTable: ; 8de92 (23:5e92)
	db 9
	dw IncaJewel0Exit_0
	dw IncaJewel0Exit_1
	dw IncaJewel0Exit_2
	dw IncaJewel0Exit_3
	dw IncaJewel0Exit_4
	dw IncaJewel0Exit_5
	dw IncaJewel0Exit_6
	dw IncaJewel0Exit_7
	dw IncaJewel0Exit_8
	begin_exits "IncaJewel0"
	exit 15, 31, 0, JEWEL, 4, 128, 8, DOWN
	exit 16, 31, 0, JEWEL, 4, 128, 8, DOWN
	exit 15, 0, 0, JEWEL, 5, 136, 240, UP
	exit 16, 0, 0, JEWEL, 5, 136, 240, UP
	exit 0, 20, 0, JEWEL, 0, 240, 168, LEFT
	exit 0, 21, 0, JEWEL, 0, 240, 168, LEFT
	exit 31, 20, 0, JEWEL, 0, 8, 168, RIGHT
	exit 31, 21, 0, JEWEL, 0, 8, 168, UP
	exit 26, 5, 2, JEWEL, 6, 24, 32, UP
	end_exits
IncaJewel1ExitTable: ; 8deed (23:5eed)
	db 7
	dw IncaJewel1Exit_0
	dw IncaJewel1Exit_1
	dw IncaJewel1Exit_2
	dw IncaJewel1Exit_3
	dw IncaJewel1Exit_4
	dw IncaJewel1Exit_5
	dw IncaJewel1Exit_6
	begin_exits "IncaJewel1"
	exit 15, 31, 0, HUB, 0, 128, 8, DOWN
	exit 16, 31, 0, HUB, 0, 128, 8, DOWN
	exit 0, 22, 0, JEWEL, 2, 240, 200, LEFT
	exit 0, 23, 0, JEWEL, 2, 240, 200, LEFT
	exit 4, 0, 0, JEWEL, 4, 40, 240, UP
	exit 5, 0, 0, JEWEL, 4, 40, 240, UP
	exit 10, 26, 3, JEWEL, 7, 128, 208, UP
	end_exits
IncaJewel2ExitTable: ; 8df34 (23:5f34)
	db 6
	dw IncaJewel2Exit_0
	dw IncaJewel2Exit_1
	dw IncaJewel2Exit_2
	dw IncaJewel2Exit_3
	dw IncaJewel2Exit_4
	dw IncaJewel2Exit_5
	begin_exits "IncaJewel2"
	exit 31, 24, 0, JEWEL, 1, 8, 184, RIGHT
	exit 31, 25, 0, JEWEL, 1, 8, 184, RIGHT
	exit 5, 0, 0, JEWEL, 3, 48, 240, UP
	exit 6, 0, 0, JEWEL, 3, 48, 240, UP
	exit 17, 0, 0, JEWEL, 3, 144, 240, UP
	exit 18, 0, 0, JEWEL, 3, 144, 240, UP
	end_exits
IncaJewel3ExitTable: ; 8df71 (23:5f71)
	db 9
	dw IncaJewel3Exit_0
	dw IncaJewel3Exit_1
	dw IncaJewel3Exit_2
	dw IncaJewel3Exit_3
	dw IncaJewel3Exit_4
	dw IncaJewel3Exit_5
	dw IncaJewel3Exit_6
	dw IncaJewel3Exit_7
	dw IncaJewel3Exit_8
	begin_exits "IncaJewel3"
	exit 5, 31, 0, JEWEL, 2, 48, 8, DOWN
	exit 6, 31, 0, JEWEL, 2, 48, 8, DOWN
	exit 17, 31, 0, JEWEL, 2, 144, 8, DOWN
	exit 18, 31, 0, JEWEL, 2, 144, 8, DOWN
	exit 31, 8, 0, JEWEL, 4, 8, 72, RIGHT
	exit 31, 9, 0, JEWEL, 4, 8, 72, RIGHT
	exit 26, 5, 2, JEWEL, 6, 24, 32, DOWN
	exit 15, 0, 0, JEWEL, 8, 128, 240, UP
	exit 16, 0, 0, JEWEL, 8, 128, 240, UP
	end_exits
IncaJewel4ExitTable: ; 8dfcc (23:5fcc)
	db 6
	dw IncaJewel4Exit_0
	dw IncaJewel4Exit_1
	dw IncaJewel4Exit_2
	dw IncaJewel4Exit_3
	dw IncaJewel4Exit_4
	dw IncaJewel4Exit_5
	begin_exits "IncaJewel4"
	exit 0, 8, 0, JEWEL, 3, 240, 72, LEFT
	exit 0, 9, 0, JEWEL, 3, 240, 72, LEFT
	exit 15, 0, 0, JEWEL, 0, 128, 240, UP
	exit 16, 0, 0, JEWEL, 0, 128, 240, UP
	exit 4, 31, 0, JEWEL, 1, 40, 8, DOWN
	exit 5, 31, 0, JEWEL, 1, 40, 8, DOWN
	end_exits
IncaJewel5ExitTable: ; 8e009 (23:6009)
	db 2
	dw IncaJewel5Exit_0
	dw IncaJewel5Exit_1
	begin_exits "IncaJewel5"
	exit 16, 31, 0, JEWEL, 0, 128, 8, DOWN
	exit 17, 31, 0, JEWEL, 0, 128, 8, DOWN
	end_exits
IncaJewel6ExitTable: ; 8e01e (23:601e)
	db 1
	dw IncaJewel6Exit_0
	begin_exits "IncaJewel6"
	exit 13, 9, 2, JEWEL, 3, 208, 48, DOWN
	end_exits
IncaJewel7ExitTable: ; 8e029 (23:6029)
	db 0
IncaJewel8ExitTable: ; 8e02a (23:602a)
	db 4
	dw IncaJewel8Exit_0
	dw IncaJewel8Exit_1
	dw IncaJewel8Exit_2
	dw IncaJewel8Exit_3
	begin_exits "IncaJewel8"
	exit 15, 31, 0, JEWEL, 3, 128, 8, DOWN
	exit 16, 31, 0, JEWEL, 3, 128, 8, DOWN
	exit 10, 0, 0, JEWEL, 9, 88, 240, UP
	exit 11, 0, 0, JEWEL, 9, 88, 240, UP
	end_exits
IncaJewel9ExitTable: ; 8e053 (23:6053)
	db 2
	dw IncaJewel9Exit_0
	dw IncaJewel9Exit_1
	begin_exits "IncaJewel9"
	exit 10, 31, 0, JEWEL, 8, 88, 8, DOWN
	exit 11, 31, 0, JEWEL, 8, 88, 8, DOWN
	end_exits
IncaBoss0ExitTable: ; 8e068 (23:6068)
	db 0
