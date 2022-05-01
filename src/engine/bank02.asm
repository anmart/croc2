Section "Bank 2 Level Load", ROMX
InitializeLevel: ; 824d (2:424d)
	call $208d
	and a
	ret nz
	ld a, [$ca7c]
	ld [$c5b0], a
	xor a
	ld [$c5b1], a
	ld [$ca6c], a
	ld [$ca6d], a
	ld [$cac5], a
	ld [$cabd], a
	ld [$cabe], a
	ld a, [wStoredLevel]
	ld [wLevel], a
	ld a, [wStoredScreen]
	ld [wScreen], a
	ld a, [wPlayerStoredX]
	ld [wPlayerX], a
	ld a, [wPlayerStoredY]
	ld [wPlayerY], a
	ld a, [wStoredDirection]
	ld [wPlayerDirection], a
	ret
; 0x828a

	INCROM $828a, $87e0

JumpTable_87e0:
	INCROM $87e0, $88c7

JumpTable_88c7:
	INCROM $88c7, $88e6

JumpTable_88e6:
	INCROM $88e6, $8a73

JumpTable_8a73:
	INCROM $8a73, $8eff


Func_8eff: ; 8eff (2:4eff)
	ld [$ca8c], a
	call $222b
	ld a, [$cacc]
	ld [$caca], a
	ld a, [$cacd]
	ld [$cacb], a
	xor a
	ld [$cacc], a
	ld [$cacd], a
	ld a, [$cabc]
	ld [$cabf], a
	ld a, [$cabd]
	ld [$cac0], a
	ld a, [wPlayerX]
	ld [wPlayerX2], a
	ld a, [wPlayerY]
	ld [wPlayerY2], a
	ld a, [$ca8e]
	or a
	jr z, .asm_8f40
	xor a
	ld [$ca8e], a
	ld a, [$ca95]
	call $749c
.asm_8f40
	ld a, [$ca6b]
	and $80
	jp nz, .asm_901c
	ld a, [$cabd]
	and $80
	jp nz, .asm_9013
	ld a, [$cabd]
	and $08
	jp z, .asm_8f68
	ld a, [$ff8e]
	and $0f
	ld [$ff8e], a
	ld a, [$ff90]
	and $0f
	ld [$ff90], a
.asm_8f68
	ld a, [$cabc]
	and $0a
	jr nz, .asm_8f75
	ld a, [$caae]
	ld [$cab0], a
.asm_8f75
	ld a, [$c5b1]
	cp $04
	jp z, .asm_9013
	ld a, [$cabd]
	and $01
	jp nz, .asm_9013
	ld a, [$ff90]
	and $08
	jp nz, .asm_9006
	ld a, [$cabc]
	and $80
	jr nz, .asm_9006
	ld a, [$cabc]
	and $03
	cp $01
	jr z, .asm_8feb
	ld a, [$ff90]
	swap a
	and $0f
	ld hl, JumpTable_8a73
	call JumpInTable
	ld a, [$cabc]
	and $08
	jr z, .asm_8fb6
	call $250b
	jr .asm_8feb
.asm_8fb6
	ld a, [$cabc]
	and $20
	jr nz, .asm_8ff2
	ld a, [$cabc]
	and $1a
	jr nz, .asm_8fd0
.asm_8fc4
	ld a, [$ff8e]
	swap a
	and $0f
	ld [wPlayerMovementDirection], a
	jr .asm_8fe5
.asm_8fd0
	ld a, [$cabc]
	and $14
	jr z, .asm_8fc4
	ld a, [$cabc]
	and $08
	jr z, .asm_8fe2
	xor a
	ld [wPlayerMovementDirection], a
.asm_8fe2
	ld a, [wPlayerMovementDirection]
.asm_8fe5
	ld hl, JumpTable_88e6
	call JumpInTable
.asm_8feb
	ld a, [$ff8e]
	and $f0
	jr z, .asm_8ffb
.asm_8ff2
	ld a, [$cac3]
	dec a
	and $1f
	ld [$cac3], a
.asm_8ffb
	ld a, [$ff90]
	and $03
	ld hl, JumpTable_87e0
	call JumpInTable
.asm_9006
	ld a, [$ff90]
	rra
	rra
	and $03
	ld hl, JumpTable_88c7
	call JumpInTable
.asm_9013
	call $5742
	call $5246
	call $5a0a
.asm_901c
	call $2478
	call $228b
	call $2253
	call $2243
	call $225b
	call $2273
	call $2263
	call $221b
	call $21bd
	call $257a
	ld a, [$cabe]
	and $80
	jr z, .asm_905a
	ld a, [$c804]
	dec a
	ld [$c804], a
	jr nz, .asm_905a
	ld a, [$cabd]
	and $f7
	ld [$cabd], a
	ld a, [$cabe]
	and $7f
	ld [$cabe], a
.asm_905a
	ld a, [$ca8c]
	or a
	call nz, $571d
	ld a, [$cabe]
	and $80
	jr z, .asm_908e
	ld a, [$ca82]
	ld b, a
	ld a, [$ca81]
	call $17a8
	add b
	ld [$ca82], a
	add a
	ld [$c5a1], a
	ld a, [$ca84]
	ld b, a
	ld a, [$ca83]
	call $17a8
	add b
	ld [$ca84], a
	add a
	ld [$c5a2], a
	jr .asm_90a2
.asm_908e
	ld a, [$ca81]
	ld [$ca82], a
	add a
	ld [$c5a1], a
	ld a, [$ca83]
	ld [$ca84], a
	add a
	ld [$c5a2], a
.asm_90a2
	call $2385
	call $50ff
	call $691e
	call Func_9c00
	call $227b
	ld a, [$cabd]
	and $01
	jr nz, .asm_90c2
	ld a, [$c5b1]
	cp $01
	jr nz, .asm_90c2
	call $2223
.asm_90c2
	ld a, $01
	ld [$c5c0], a
	ld a, [$ca6b]
	cp $01
	ret nz
	ld a, $02
	ld [$c5b1], a
	xor a
	ld [$ca6c], a
	ld a, [$c967]
	ld [$c999], a
	xor a
	ld [$c967], a
	ld [$c5c0], a
	ld a, [$c9f1]
	ld b, a
	ld a, [$c9f2]
	ld c, a
	ld d, $01
	ld a, $03
	call $20b3
	ret
; 0x90f3

	INCROM $90f3, $9c00

; I believe this handles level trigger checking
Func_9c00: ; 9c00 (2:5c00)
	xor a
	ld [wTempKeyItem], a ; TODO: change wTempKeyItem to be generic
	ld a, $01
	ld [rSVBK], a
	ld hl, $de8f
	ld a, [hli]
	or a
	ret z
	ld [wTempCounter], a
.asm_9c12
	ld a, [hli]
	ld b, a
	ld [$caee], a
	ld a, [hli]
	ld d, a
	ld [$caef], a
	ld a, [hli]
	ld [$caea], a
	ld a, [hli]
	ld [$caeb], a
	ld a, [hli]
	ld [$caec], a
	ld a, [hli]
	ld [$caed], a
	ld a, [wPlayerX]
	call $2941
	ld c, a
	ld a, [$caea]
	cp c
	jr c, .asm_9c50
	ld b, d
	ld a, [wPlayerY]
	call $2941
	ld c, a
	ld a, [$caeb]
	cp c
	jr c, .asm_9c50
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, $01
	ld [wTempKeyItem], a
	jp hl
.asm_9c50
	inc hl
	inc hl
	ld a, [wTempCounter]
	dec a
	ld [wTempCounter], a
	jr nz, .asm_9c12
	ld a, [wTempKeyItem]
	or a
	ret nz
	xor a
	ld [$ca69], a
	ret
; 0x9c65
