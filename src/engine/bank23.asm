; checks Croc's X and Y location against a list of exits every single frame
; If successful, runs one of several functions in ExitJumpTable, usually switching to a new level/screen combo
TryLevelExits: ; 8c000 (23:4000)
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
	jr nz, .fail
	ld a, [hli]
	cp e
	jr nz, .fail
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
	ld h, d
	ld l, e
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
