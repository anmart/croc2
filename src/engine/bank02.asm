SECTION "level load", ROMX
Func_824d: ; 824d (2:424d)
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

	; Hijack the code for our own purposes
	jp EnhancedLoad

	; never reached
	;ld a, [wStoredLevel] - fortunately jp is the same length as this (3 bytes)
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

SECTION "bank 2 free space", ROMX
EnhancedLoad:
	ld a, [wStoredWorld]
	ld [wWorld], a

	; Currently trying to make sure wStoredWorld isn't being used by something more important
	; debug_xor_memory wStoredWorld - doesn't currently work because death uses this same code

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

