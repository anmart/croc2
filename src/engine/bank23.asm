; checks Croc's X and Y location against a list of exits every single frame
; If successful, runs one of several functions in ExitJumpTable, usually switching to a new level/screen combo
TryLevelExits: ; 8c000 (23:4000)

	; This is silly, but I *know* this is called every frame that croc can move around
	call Random

	ld a, [wPlayerX]
	swap a
	rlca
	and $1f ; a is the upper 5 bits of wPlayerX
	ld d, a
	ld a, [wPlayerY]
	swap a
	rlca
	and $1f ; a is the upper 5 bits of wPlayerY
	ld e, a
	ld a, [wWorld]
	ld hl, Data_Game
	ld_hl_from_table
	ld a, [wLevel]
	ld_hl_from_table
	ld a, [wScreen]
	ld_hl_from_table
	xor a
	ld b, [hl]
	or b
	ret z
	inc hl
.tryNextExit
	push hl
	ld a, b
	dec a
	ld_hl_from_table

	ld a, [hli]
	cp d
	ld a, [hli]
	jr nz, .try_again
	cp e
	jr nz, .try_again
	inc hl
	inc hl
	jr .accept_warp

.try_again
	ld a, [hli]
	cp d
	jr nz, .fail
	ld a, [hli]
	cp e
	jr nz, .fail

.accept_warp
	ld a, [hli]
	ld d, h
	ld e, l
	ld hl, ExitJumpTable
	call JumpInTable
	ld b, 1 ; finish checking if we've found at least one exit
.fail
	pop hl
	dec b
	jr nz, .tryNextExit
	ret

ExitJumpTable: ; 8c042 (23:4042)
	dw ExitStandard
	dw ExitToShop
	dw ExitJumpJelly
	dw ExitRoboGobbo
	dw ExitDante

; loads exit data for standard screen to screen transitions
ExitStandard: ; 8c04c (23:404c)
	ld a, [$ca6b]
	and $fe
	ld [$ca6b], a
	ld a, [wLevel]
	ld [wLastLevel], a
	ld a, [wScreen]
	ld [wLastScreen], a

	ld hl, StandardExits_0
	ld a, 2
	call GetRandom
	and a
	jr z, .load_exit
	ld hl, StandardExits_1
.load_exit
	ld a, 174
	call GetRandom
	ld_hl_from_table

	; debug check that nothing else is changing wStoredLevel
	; debug_assert_memory wStoredWorld, 0 - wStoredLevel needs to be retained

	; handle new world data
	ld a, [hli]
	ld [wStoredWorld], a

	ld a, [hli]
	ld [wStoredLevel], a
	ld a, [hli]
	ld [wStoredScreen], a
	ld a, [hli]
	ld [wPlayerX], a
	ld [wPlayerStoredX], a
	ld a, [hli]
	ld [wPlayerY], a
	ld [wPlayerStoredY], a
	ld a, [hli]
	ld [wStoredDirection], a
	ld a, $02
	ld [$ca7c], a
	ld a, $03
	ld [$c5b1], a
	xor a
	ld [$c9cf], a
	call ExitFinish
	ret

; loads seemingly useless data (1 byte shouldn't even be loaded) and opens the shop
ExitToShop: ; 8c08e (23:408e)
	ld a, [wWorld]
	ld [$ca79], a
	ld h, d
	ld l, e
	inc hl
	ld a, [hli]
	ld [$ca7c], a
	ld a, [hli]
	ld [wPlayerX], a
	ld [wPlayerStoredX], a
	ld a, [hli]
	ld [wPlayerY], a
	ld [wPlayerStoredY], a
	ld a, [hli] ; This ld overlaps level exit data
	ld [wStoredDirection], a
	ld a, $03
	ld [$c5b1], a
	call ExitFinish
	ret

; handles placing and using a jump jelly
ExitJumpJelly: ; 8c0b5 (23:40b5)
	ld a, [$cabc]
	and $09
	ret nz
	ld a, [$c933]
	or a
	jr nz, .asm_8c0e6
	ld a, [$cabc]
	and $02
	ret nz
	ld a, [$c9e2]
	and $04
	ret z
	ld a, $02
	call $21e0
	ld a, [$ff8e]
	and $04
	ret z
	ld a, [$c9e2]
	and $fb
	ld [$c9e2], a
	ld a, $80
	ld [$c933], a
	ret
.asm_8c0e6
	ld a, [$ca6b]
	or a
	ret nz
	ld a, [$cabf]
	and $10
	ret z
	ld a, [$cabc]
	and $10
	ret nz
	ld a, [wLevel]
	ld [wLastLevel], a
	ld a, [wScreen]
	ld [wLastScreen], a
	ld h, d
	ld l, e

	; debug check that nothing else is changing wStoredLevel
	; debug_assert_memory wStoredWorld, 0 - wStoredLevel needs to be retained

	; handle new world data
	ld a, [hli]
	ld [wStoredWorld], a

	ld a, [hli]
	ld [wStoredLevel], a
	ld a, [hli]
	ld [wStoredScreen], a
	ld a, [hli]
	ld [wPlayerX], a
	ld [wPlayerStoredX], a
	ld a, [hli]
	ld [wPlayerY], a
	ld [wPlayerStoredY], a
	ld a, [hli]
	ld [wStoredDirection], a
	ld a, $02
	ld [$ca7c], a
	ld a, $04
	ld [$c5b1], a
	xor a
	ld [$c9cf], a
	ld [$c934], a
	ld b, $12
	call $16b9
	ret

; handles using a RoboGobbo
ExitRoboGobbo: ; 8c136 (23:4136)
	ld a, [$ca6b]
	and $01
	ret nz
	ld a, [$c9e2]
	and $f0
	ret z
	ld a, $01
	call $21e0
	ld a, [$cabc]
	and $1b
	ret nz
	ld a, [$ff8e]
	and $04
	ret z
	ld a, [$c9e2]
	sub $10
	ld [$c9e2], a
	ld a, [wLevel]
	ld [wLastLevel], a
	ld a, [wScreen]
	ld [wLastScreen], a
	ld a, [wPlayerX]
	ld [$ca8a], a
	ld a, [wPlayerY]
	ld [$ca8b], a
	ld h, d
	ld l, e

	; debug check that nothing else is changing wStoredLevel
	; debug_assert_memory wStoredWorld, 0 - wStoredLevel needs to be retained

	; handle new world data
	ld a, [hli]
	ld [wStoredWorld], a

	ld a, [hli]
	ld [wStoredLevel], a
	ld a, [hli]
	ld [wStoredScreen], a
	ld a, [hli]
	ld [wPlayerX], a
	ld [wPlayerStoredX], a
	ld a, [hli]
	ld [wPlayerY], a
	ld [wPlayerStoredY], a
	ld a, [hli]
	ld [wStoredDirection], a
	ld a, $04
	ld [$ca7c], a
	ld a, $03
	ld [$c5b1], a
	xor a
	ld [$c9cf], a
	ld b, $2d
	call $16b9
	call ExitFinish
	ret

; Seemingly exclusively handles the entrance to Dante's arena
; Possibly used to differenciate between any%/100% dante fight?
ExitDante: ; 8c1a6 (23:41a6)
	ld a, [wLevel]
	ld [wLastLevel], a
	ld a, [wScreen]
	ld [wLastScreen], a
	ld h, d
	ld l, e

	; debug check that nothing else is changing wStoredLevel
	; debug_assert_memory wStoredWorld, 0 - wStoredLevel needs to be retained

	; handle new world data
	ld a, [hli]
	ld [wStoredWorld], a

	ld a, [hli]
	ld [wStoredLevel], a
	ld a, [hli]
	ld [wStoredScreen], a
	ld a, [hli]
	ld [wPlayerX], a
	ld [wPlayerStoredX], a
	ld a, [hli]
	ld [wPlayerY], a
	ld [wPlayerStoredY], a
	ld a, [hli]
	ld [wStoredDirection], a
	ld a, $16
	ld [$ca7c], a
	ld a, $03
	ld [$c5b1], a
	xor a
	ld [$c9cf], a
	call ExitFinish
	ret

ExitFinish: ; 8c1e0 (23:41e0)
	ld a, [$c9f1]
	ld b, a
	ld a, [$c9f2]
	ld c, a
	ld d, $01
	ld a, $03
	call $20b8
	ret

Data_Game: ; 8c1f0 (23:41f0)
	dw SailorExitTables
	dw CossackExitTables
	dw CavemanExitTables
	dw IncaExitTables

INCLUDE "data/levels.asm" ; temp

SECTION "bank 23 free space", ROMX
StandardExits_0:
	dw SailorHub0Exit_0 + 5
	dw SailorHub0Exit_1 + 5
	dw SailorHub0Exit_2 + 5
	dw SailorHub0Exit_3 + 5
	dw SailorCage0Exit_0 + 5
	dw SailorCage0Exit_1 + 5
	dw SailorCage0Exit_2 + 5
	dw SailorCage0Exit_4 + 5
	dw SailorCage1Exit_0 + 5
	dw SailorCage1Exit_1 + 5
	dw SailorCage2Exit_0 + 5
	dw SailorCage2Exit_1 + 5
	dw SailorCage5Exit_0 + 5
	dw SailorCage5Exit_1 + 5
	dw SailorCage5Exit_2 + 5
	dw SailorCage5Exit_3 + 5
	dw SailorCage5Exit_4 + 5
	dw SailorCage6Exit_0 + 5
	dw SailorCage6Exit_1 + 5
	dw SailorCage7Exit_0 + 5
	dw SailorCage7Exit_1 + 5
	dw SailorCage8Exit_0 + 5
	dw SailorCage8Exit_1 + 5
	dw SailorCage8Exit_2 + 5
	dw SailorCage9Exit_0 + 5
	dw SailorCrow0Exit_0 + 5
	dw SailorCrow0Exit_1 + 5
	dw SailorCrow1Exit_0 + 5
	dw SailorCrow1Exit_1 + 5
	dw SailorCrow1Exit_2 + 5
	dw SailorCrow2Exit_0 + 5
	dw SailorCrow2Exit_1 + 5
	dw SailorCrow2Exit_2 + 5
	dw SailorCrow2Exit_3 + 5
	dw SailorCrow2Exit_5 + 5
	dw SailorCrow3Exit_0 + 5
	dw SailorCrow3Exit_1 + 5
	dw SailorCrow4Exit_0 + 5
	dw SailorCrow4Exit_1 + 5
	dw SailorCrow7Exit_0 + 5
	dw SailorCrow7Exit_1 + 5
	dw SailorCrow7Exit_2 + 5
	dw SailorCrow7Exit_3 + 5
	dw SailorCrow8Exit_0 + 5
	dw SailorCrow8Exit_1 + 5
	dw SailorCrow9Exit_0 + 5
	dw SailorCrow9Exit_1 + 5
	dw SailorCrow10Exit_0 + 5
	dw SailorCrow10Exit_1 + 5
	dw SailorCrow10Exit_2 + 5
	dw SailorCrow10Exit_3 + 5
	dw SailorCrow10Exit_4 + 5
	dw SailorCrow10Exit_5 + 5
	dw SailorCrow10Exit_6 + 5
	dw SailorItems0Exit_0 + 5
	dw SailorItems0Exit_1 + 5
	dw SailorItems0Exit_2 + 5
	dw SailorItems1Exit_0 + 5
	dw SailorItems1Exit_1 + 5
	dw SailorItems1Exit_2 + 5
	dw SailorItems1Exit_3 + 5
	dw SailorItems1Exit_4 + 5
	dw SailorItems1Exit_5 + 5
	dw SailorItems2Exit_0 + 5
	dw SailorItems2Exit_1 + 5
	dw SailorItems3Exit_0 + 5
	dw SailorItems3Exit_1 + 5
	dw SailorItems4Exit_0 + 5
	dw SailorItems4Exit_1 + 5
	dw SailorItems4Exit_2 + 5
	dw SailorItems5Exit_0 + 5
	dw SailorItems5Exit_1 + 5
	dw SailorItems5Exit_2 + 5
	dw SailorItems8Exit_0 + 5
	dw SailorItems8Exit_1 + 5
	dw SailorItems8Exit_2 + 5
	dw SailorItems8Exit_3 + 5
	dw SailorItems9Exit_0 + 5
	dw SailorItems9Exit_1 + 5
	dw SailorItems9Exit_2 + 5
	dw SailorItems10Exit_0 + 5
	dw SailorItems10Exit_1 + 5
	dw SailorItems10Exit_2 + 5
	dw SailorItems10Exit_3 + 5
	dw SailorItems11Exit_0 + 5
	dw SailorItems11Exit_1 + 5
	dw SailorItems12Exit_0 + 5
	dw CossackHub0Exit_0 + 5
	dw CossackHub0Exit_1 + 5
	dw CossackHub0Exit_2 + 5
	dw CossackHub0Exit_3 + 5
	dw CossackHerb0Exit_0 + 5
	dw CossackHerb0Exit_1 + 5
	dw CossackHerb1Exit_0 + 5
	dw CossackHerb1Exit_1 + 5
	dw CossackHerb1Exit_2 + 5
	dw CossackHerb2Exit_0 + 5
	dw CossackHerb3Exit_0 + 5
	dw CossackHerb3Exit_1 + 5
	dw CossackHerb4Exit_0 + 5
	dw CossackHerb4Exit_1 + 5
	dw CossackHerb7Exit_0 + 5
	dw CossackHerb7Exit_1 + 5
	dw CossackHerb8Exit_0 + 5
	dw CossackHerb8Exit_1 + 5
	dw CossackHerb9Exit_0 + 5
	dw CossackMines0Exit_0 + 5
	dw CossackMines0Exit_1 + 5
	dw CossackMines1Exit_0 + 5
	dw CossackMines1Exit_1 + 5
	dw CossackMines1Exit_2 + 5
	dw CossackMines2Exit_0 + 5
	dw CossackMines2Exit_1 + 5
	dw CossackMines2Exit_2 + 5
	dw CossackMines3Exit_0 + 5
	dw CossackMines4Exit_0 + 5
	dw CossackMines4Exit_1 + 5
	dw CossackMines4Exit_2 + 5
	dw CossackMines4Exit_3 + 5
	dw CossackMines5Exit_0 + 5
	dw CossackMines8Exit_0 + 5
	dw CossackMines8Exit_1 + 5
	dw CossackMines9Exit_0 + 5
	dw CossackMines9Exit_1 + 5
	dw CossackMines9Exit_2 + 5
	dw CossackMines10Exit_0 + 5
	dw CossackMines10Exit_1 + 5
	dw CossackSnowman0Exit_0 + 5
	dw CossackSnowman0Exit_1 + 5
	dw CossackSnowman1Exit_0 + 5
	dw CossackSnowman1Exit_1 + 5
	dw CossackSnowman2Exit_0 + 5
	dw CossackSnowman2Exit_1 + 5
	dw CossackSnowman2Exit_2 + 5
	dw CossackSnowman2Exit_3 + 5
	dw CossackSnowman3Exit_0 + 5
	dw CossackSnowman3Exit_1 + 5
	dw CossackSnowman3Exit_2 + 5
	dw CossackSnowman4Exit_0 + 5
	dw CossackSnowman4Exit_1 + 5
	dw CossackSnowman4Exit_2 + 5
	dw CossackSnowman5Exit_0 + 5
	dw CossackSnowman8Exit_0 + 5
	dw CossackSnowman8Exit_1 + 5
	dw CossackSnowman8Exit_2 + 5
	dw CossackSnowman8Exit_3 + 5
	dw CossackSnowman9Exit_0 + 5
	dw CossackSnowman9Exit_1 + 5
	dw CossackSnowman9Exit_2 + 5
	dw CossackSnowman9Exit_3 + 5
	dw CossackSnowman10Exit_0 + 5
	dw CossackSnowman10Exit_1 + 5
	dw CossackSnowman10Exit_2 + 5
	dw CossackSnowman10Exit_3 + 5
	dw CossackSnowman11Exit_0 + 5
	dw CossackSnowman11Exit_1 + 5
	dw CossackSnowman11Exit_2 + 5
	dw CossackSnowman11Exit_3 + 5
	dw CossackSnowman12Exit_0 + 5
	dw CossackSnowman12Exit_1 + 5
	dw CossackSnowman12Exit_2 + 5
	dw CossackSnowman13Exit_0 + 5
	dw CavemanHub0Exit_0 + 5
	dw CavemanHub0Exit_1 + 5
	dw CavemanHub0Exit_2 + 5
	dw CavemanHub0Exit_3 + 5
	dw CavemanRobo0Exit_0 + 5
	dw CavemanRobo0Exit_1 + 5
	dw CavemanRobo1Exit_0 + 5
	dw CavemanRobo1Exit_2 + 5
	dw CavemanRobo2Exit_0 + 5
	dw CavemanRobo2Exit_1 + 5
	dw SailorCage0Exit_0 + 5 ; duplicating a random one to make it even, just a tiiiiny bit of bias
StandardExits_1:
	dw CavemanRobo2Exit_2 + 5
	dw CavemanRobo3Exit_0 + 5
	dw CavemanRobo3Exit_1 + 5
	dw CavemanRobo4Exit_0 + 5
	dw CavemanRobo4Exit_1 + 5
	dw CavemanRobo4Exit_2 + 5
	dw CavemanRobo4Exit_3 + 5
	dw CavemanRobo5Exit_0 + 5
	dw CavemanRobo8Exit_0 + 5
	dw CavemanRobo8Exit_1 + 5
	dw CavemanRobo8Exit_2 + 5
	dw CavemanRobo8Exit_3 + 5
	dw CavemanRobo9Exit_0 + 5
	dw CavemanRobo9Exit_1 + 5
	dw CavemanRobo9Exit_2 + 5
	dw CavemanRobo9Exit_3 + 5
	dw CavemanRobo10Exit_0 + 5
	dw CavemanRobo10Exit_1 + 5
	dw CavemanRobo10Exit_2 + 5
	dw CavemanRobo10Exit_3 + 5
	dw CavemanRobo11Exit_0 + 5
	dw CavemanRobo11Exit_1 + 5
	dw CavemanRobo11Exit_2 + 5
	dw CavemanRobo11Exit_3 + 5
	dw CavemanRobo12Exit_0 + 5
	dw CavemanRobo12Exit_1 + 5
	dw CavemanRobo12Exit_2 + 5
	dw CavemanRobo12Exit_3 + 5
	dw CavemanRobo13Exit_0 + 5
	dw CavemanRobo13Exit_1 + 5
	dw CavemanRobo14Exit_0 + 5
	dw CavemanGears0Exit_0 + 5
	dw CavemanGears0Exit_1 + 5
	dw CavemanGears0Exit_2 + 5
	dw CavemanGears0Exit_3 + 5
	dw CavemanGears1Exit_0 + 5
	dw CavemanGears1Exit_1 + 5
	dw CavemanGears1Exit_2 + 5
	dw CavemanGears1Exit_3 + 5
	dw CavemanGears2Exit_0 + 5
	dw CavemanGears2Exit_1 + 5
	dw CavemanGears2Exit_3 + 5
	dw CavemanGears3Exit_0 + 5
	dw CavemanGears4Exit_0 + 5
	dw CavemanGears5Exit_0 + 5
	dw CavemanGears8Exit_0 + 5
	dw CavemanGears8Exit_1 + 5
	dw CavemanGears8Exit_2 + 5
	dw CavemanGears8Exit_3 + 5
	dw CavemanGears9Exit_0 + 5
	dw CavemanGears9Exit_1 + 5
	dw CavemanGears9Exit_2 + 5
	dw CavemanGears9Exit_3 + 5
	dw CavemanGears10Exit_0 + 5
	dw CavemanGears10Exit_1 + 5
	dw CavemanGears10Exit_2 + 5
	dw CavemanGears10Exit_3 + 5
	dw CavemanGears11Exit_0 + 5
	dw CavemanGears11Exit_1 + 5
	dw CavemanGears11Exit_2 + 5
	dw CavemanGears11Exit_3 + 5
	dw CavemanGears12Exit_0 + 5
	dw CavemanGears12Exit_1 + 5
	dw CavemanGears13Exit_0 + 5
	dw CavemanWater0Exit_0 + 5
	dw CavemanWater0Exit_1 + 5
	dw CavemanWater0Exit_2 + 5
	dw CavemanWater1Exit_0 + 5
	dw CavemanWater1Exit_1 + 5
	dw CavemanWater1Exit_2 + 5
	dw CavemanWater1Exit_3 + 5
	dw CavemanWater1Exit_5 + 5
	dw CavemanWater2Exit_0 + 5
	dw CavemanWater2Exit_1 + 5
	dw CavemanWater2Exit_2 + 5
	dw CavemanWater3Exit_0 + 5
	dw CavemanWater3Exit_1 + 5
	dw CavemanWater3Exit_3 + 5
	dw CavemanWater4Exit_0 + 5
	dw CavemanWater4Exit_1 + 5
	dw CavemanWater4Exit_2 + 5
	dw CavemanWater4Exit_3 + 5
	dw CavemanWater5Exit_0 + 5
	dw CavemanWater5Exit_1 + 5
	dw CavemanWater8Exit_0 + 5
	dw CavemanWater8Exit_1 + 5
	dw CavemanWater8Exit_2 + 5
	dw CavemanWater9Exit_0 + 5
	dw CavemanWater9Exit_1 + 5
	dw CavemanWater9Exit_2 + 5
	dw CavemanWater9Exit_3 + 5
	dw CavemanWater9Exit_4 + 5
	dw CavemanWater9Exit_5 + 5
	dw CavemanWater9Exit_6 + 5
	dw CavemanWater10Exit_0 + 5
	dw CavemanWater11Exit_0 + 5
	dw CavemanWater11Exit_1 + 5
	dw CavemanWater11Exit_2 + 5
	dw IncaHub0Exit_0 + 5
	dw IncaHub0Exit_1 + 5
	dw IncaHub0Exit_2 + 5
	dw IncaLetter0Exit_0 + 5
	dw IncaLetter0Exit_1 + 5
	dw IncaLetter0Exit_2 + 5
	dw IncaLetter1Exit_0 + 5
	dw IncaLetter1Exit_1 + 5
	dw IncaLetter1Exit_2 + 5
	dw IncaLetter1Exit_3 + 5
	dw IncaLetter2Exit_0 + 5
	dw IncaLetter3Exit_0 + 5
	dw IncaLetter3Exit_1 + 5
	dw IncaLetter4Exit_0 + 5
	dw IncaLetter4Exit_1 + 5
	dw IncaLetter5Exit_0 + 5
	dw IncaLetter8Exit_0 + 5
	dw IncaLetter8Exit_1 + 5
	dw IncaLetter8Exit_2 + 5
	dw IncaLetter8Exit_3 + 5
	dw IncaLetter9Exit_0 + 5
	dw IncaLetter10Exit_0 + 5
	dw IncaLetter10Exit_1 + 5
	dw IncaLetter11Exit_0 + 5
	dw IncaLetter11Exit_1 + 5
	dw IncaLetter12Exit_0 + 5
	dw IncaLetter12Exit_1 + 5
	dw IncaLetter13Exit_0 + 5
	dw IncaMayor0Exit_0 + 5
	dw IncaMayor0Exit_1 + 5
	dw IncaMayor0Exit_3 + 5
	dw IncaMayor1Exit_0 + 5
	dw IncaMayor1Exit_1 + 5
	dw IncaMayor2Exit_0 + 5
	dw IncaMayor2Exit_1 + 5
	dw IncaMayor2Exit_2 + 5
	dw IncaMayor2Exit_3 + 5
	dw IncaMayor2Exit_4 + 5
	dw IncaMayor3Exit_0 + 5
	dw IncaMayor3Exit_1 + 5
	dw IncaMayor3Exit_2 + 5
	dw IncaMayor4Exit_0 + 5
	dw IncaMayor4Exit_1 + 5
	dw IncaMayor5Exit_0 + 5
	dw IncaMayor8Exit_0 + 5
	dw IncaMayor8Exit_1 + 5
	dw IncaMayor9Exit_0 + 5
	dw IncaMayor10Exit_0 + 5
	dw IncaMayor10Exit_1 + 5
	dw IncaMayor10Exit_2 + 5
	dw IncaMayor10Exit_3 + 5
	dw IncaMayor10Exit_4 + 5
	dw IncaMayor10Exit_5 + 5
	dw IncaJewel0Exit_0 + 5
	dw IncaJewel0Exit_1 + 5
	dw IncaJewel0Exit_2 + 5
	dw IncaJewel0Exit_3 + 5
	dw IncaJewel0Exit_4 + 5
	dw IncaJewel1Exit_0 + 5
	dw IncaJewel1Exit_1 + 5
	dw IncaJewel1Exit_2 + 5
	dw IncaJewel2Exit_0 + 5
	dw IncaJewel2Exit_1 + 5
	dw IncaJewel2Exit_2 + 5
	dw IncaJewel3Exit_0 + 5
	dw IncaJewel3Exit_1 + 5
	dw IncaJewel3Exit_2 + 5
	dw IncaJewel3Exit_4 + 5
	dw IncaJewel4Exit_0 + 5
	dw IncaJewel4Exit_1 + 5
	dw IncaJewel4Exit_2 + 5
	dw IncaJewel5Exit_0 + 5
	dw IncaJewel8Exit_0 + 5
	dw IncaJewel8Exit_1 + 5
	dw IncaJewel9Exit_0 + 5
