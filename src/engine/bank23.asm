Func_8c000: ; 8c000 (23:4000)
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
.asm_8c026
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
	ld hl, JumpTable_Boss042
	call JumpInTable
	ld b, $01
.fail
	pop hl
	dec b
	jr nz, .asm_8c026
	ret

JumpTable_Boss042: ; 8c042 (23:4042)
	dw Func_8c04c ; standard walking through screen entrance	
	dw Func_8c08e ; walking through shop door
	dw Func_8c0b5 ; Jump Jelly
	dw Func_8c136 ; Robo Gobbo
	dw Func_8c1a6 ; Seemingly just used for Dante's arena, maybe for all golden gobbos vs not?

Func_8c04c: ; 8c04c (23:404c)
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
	call Func_8c1e0
	ret

Func_8c08e: ; 8c08e (23:408e)
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
	ld a, [hli]
	ld [wStoredDirection], a
	ld a, $03
	ld [$c5b1], a
	call Func_8c1e0
	ret

Func_8c0b5: ; 8c0b5 (23:40b5)
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
	call $21e0 ;Func_21e0
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
	call $16b9 ;Func_16b9
	ret

Func_8c136: ; 8c136 (23:4136)
	ld a, [$ca6b]
	and $01
	ret nz
	ld a, [$c9e2]
	and $f0
	ret z
	ld a, $01
	call $21e0 ;Func_21e0
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
	call Func_8c1e0
	ret

Func_8c1a6: ; 8c1a6 (23:41a6)
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
	call Func_8c1e0
	ret

Func_8c1e0: ; 8c1e0 (23:41e0)
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
