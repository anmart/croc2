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
