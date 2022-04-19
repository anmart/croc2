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
