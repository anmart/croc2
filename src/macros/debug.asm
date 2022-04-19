; Asserts that the contents of a certain memory address (first arg) equal the value of the second arg
MACRO debug_assert_memory
	IF DEF(DEBUG)
		ld a, [\1]
		cp \2
		jr z, .continue\@
		ld b, b
	.continue\@
	ENDC
ENDM	

; This is mostly for use with the above to check if a wram value gets changed when I'm not using it
MACRO debug_xor_memory
	IF DEF(DEBUG)
		xor a
		ld [\1], a
	ENDC
ENDM
