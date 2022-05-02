Section "Bank b Something", ROMX
CollectItem: ; 2d892 (b:5892)
	ld a, $05
	ld [rSVBK], a
	ld hl, $d039
	ld a, [hli]
	or a
	ret z
	ld [wTempCounter], a
.loop
	ld b, [hl]
	inc hl
	ld a, [wScreen]
	xor b
	jr z, .tryItemCheck
	ld a, $06
	hl_add_a
	jr .continue
.tryItemCheck
	ld a, [hli]
	ld [wTemp_cadf], a
	inc hl
	inc hl
	ld a, [hli]
	ld b, a
	ld a, [wPlayerX]
	call $2941
	cp $06
	jr nc, .continueEarlier
	ld a, [hli]
	sub $0a
	ld b, a
	ld a, [wPlayerY]
	call $2941
	cp $06
	jr nc, .continueEarly
	ld a, [wTemp_cadf] ; If code gets here, croc is standing on a gem location
	ld b, a
	ld a, [wKeyItems]
	and b
	jr nz, .continueEarly
	ld a, [wKeyItems]
	or b
	ld [wKeyItems], a
	call $584e ; causes the hooray animation
	ld b, $10
	call $16b9
	jr .finish
.continueEarlier ; It's my disassembly and I can be silly if I want to
	inc hl
.continueEarly
	inc hl
.continue
	ld a, [wTempCounter]
	dec a
	ld [wTempCounter], a
	jr nz, .loop
.finish
	ret
; 0x2d8f4

	INCROM $2d8f4, $2df99

; loads *something* per screen, flags maybe?
; this unlocked a rather large section of data that i'll get to *later*
Func_2df99: ; 2df99 (b:5f99)
	ld hl, GameTriggerTables
	ld a, [wWorld]
	ld_hl_from_table
	ld a, [wLevel]
	ld_hl_from_table
	ld a, [wScreen]
	ld_hl_from_table
	ld de, $de8f
	ld a, $01
	ld [rSVBK], a ; switch to wram bank 1
	ld b, $41
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .loop
	ret
; 0x2dfb9

INCLUDE "src/data/level_triggers.asm"
