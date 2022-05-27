; rst vectors
SECTION "rst00", ROM0
    pop hl
    add a
    hl_add_a
	ld a, [hli]
    ld h, [hl]
    ld l, a
    jp hl

	ds $1

SECTION "rst08", ROM0
	ret

	ds $7

SECTION "rst10", ROM0
	ld [$c611], a
	ld [$2000], a
	ret

	ds $1

SECTION "rst18", ROM0
	ld a, [$c610]
	rst $10
	ret

	ds $3

SECTION "rst20", ROM0
WaitForLYCFlag:
	ldh a, [rSTAT]
	and STAT_LYCFLAG
	jr nz, WaitForLYCFlag
	ret

	ds $1

SECTION "rst28", ROM0
; hl_add_a:
	add l
	ld l, a
	ret nc
	inc h
	ret

	ds $3

SECTION "rst30", ROM0
; ld_hl_from_table:
; double a, add it to hl, then replace hl with [hl]/[hl+1]
; a - index in table
; hl - location of table
	add a
	hl_add_a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

	ds $2

SECTION "rst38", ROM0
	ld a, [hli]
	ld l, [hl]
	ld h, a
	ret

	ds $4

; interrupts
SECTION "vblank", ROM0
	jp $0244

SECTION "lcdc", ROM0
	jp $0309

SECTION "timer", ROM0
	reti

SECTION "serial", ROM0
	reti

SECTION "joypad", ROM0
	reti

SECTION "romheader", ROM0
	nop
	jp Start

SECTION "start", ROM0
Start: ; 0150 (0:0150)

	INCROM $0150, $0771

; jumps to an entry in a 16bit table
; a - index on table
; hl - location of table
JumpInTable: ; 0771 (0:0771)
	ld_hl_from_table
	jp hl
; 0x773

	INCROM $0773, $0abf

; puts dialog frame data into ca52+
; of the format:
; Dialog Frame Amount
; Dialog Frame Amount
; Dialog Frame
; Dialog Frame
; ...
;
; a - index on PointerTable_aef
Func_abf: ; abf (0:abf)
	ld [$ca62], a
	ld de, $ca52
	ld hl, PointerTable_aef
	ld_hl_from_table
	ld a, [hli] ; 1 value into a
	ld [de], a ; then into de
	inc de
	ld [de], a ; and de+1?
	inc de
	ld b, a ; and b?! jeez
.loadDialogFramesLoop
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .loadDialogFramesLoop
	call $25a2 ; no clue what this does but commenting it out seemed to change nothing
	ld a, [$ca52]
	dec a
	ld [$ca52], a
	ld a, [$ca54]
	call $fe1 ; this function draws 1 screen of dialog
	ld a, $06
	ld [$c5b1], a
	xor a
	ld [$ca6c], a
	ret

; each pointer links to a small table of the following
; Dialog Frame Amount
; Dialog Frame
; Dialog Frame
; ...
; NOTE: some Text Frames can apparently teleport croc to new locations!
PointerTable_aef: ; aef (0:aef)
	dw $0c2f
	dw $0c32
	dw $0c35
	dw $0c38
	dw $0c3b
	dw $0c3e
	dw $0c42
	dw $0c45
	dw $0c48
	dw $0c4b
	dw $0c4d
	dw $0c4f
	dw $0c51
	dw $0c56
	dw $0c59
	dw $0c5d
	dw $0c5f
	dw $0c61
	dw $0c63
	dw $0c63
	dw $0c63
	dw $0c63
	dw $0c65
	dw $0c67
	dw $0c69
	dw $0c6b
	dw $0c6e
	dw $0c71
	dw $0c74
	dw $0c76
	dw $0c78
	dw $0c7a
	dw $0c80
	dw $0c86
	dw $0c8c
	dw $0c8f
	dw $0c91
	dw $0c93
	dw $0c97
	dw $0c9c
	dw $0c9f
	dw $0ca2
	dw $0ca6
	dw $0ca9
	dw $0cab
	dw $0cb0
	dw $0cb3
	dw $0cb7
	dw $0cc3
	dw $0cc6
	dw $0ccb
	dw $0cd2
	dw $0cd5
	dw $0cd9
	dw $0cdd
	dw $0ce0
	dw $0ce4
	dw $0ce8
	dw $0ceb
	dw $0cee
	dw $0cf3
	dw $0cf5
	dw $0cfb
	dw $0d00
	dw $0d02
	dw $0d04
	dw $0d06
	dw $0d08
	dw $0d0b

REPT 91
	dw $0d0d ; does not actually link to a proper text screen
ENDR
; 0xc2f

	INCROM $0c2f, $2941

; returns the difference between a and b in a
; the smaller value ends up in b (though is probably never used that way)
AbsSub: ; 2941 (0:2941)
	cp b
	jr nc, .sub
	ld c, b
	ld b, a
	ld a, c
.sub
	sub b
	ret
; 0x2949
