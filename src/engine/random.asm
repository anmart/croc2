;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;             RANDOM - Taken from my ezgbc project            ;
;       see: https://github.com/anmart/ezgbc for more         ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;
;MACROS;
;;;;;;;;
; used only for the Random function
; note: pass literally anything as an argument
; to skip the extra loads into de
MACRO random16bXor
	ld a, l
	xor c
	ld c, a
IF _NARG == 0
	ld l, a
ELSE
	ld [wRNG1], a
ENDC

	ld a, h
	xor b
	ld b, a
IF _NARG == 0
	ld h, a
ELSE
	ld [wRNG2], a
ENDC
endm
rand_LastRun EQU $0

Random:
	push bc
	push hl
	ld hl, wRNG1
	ld c, [hl]
	inc hl
	ld b, [hl]
	ld a, b
	or c
	jr z, .initializeRNG
	; 1,5,2 16 bit xorshift rng
	ld h, b
	ld l, c
	sla l
	rl h
	;16 bit xor is a bit unwieldy, so it was made a macro
	random16bXor
	rept 5
	srl h
	rr l
	endr
	random16bXor
	rept 2
	sla l
	rl h
	endr
	random16bXor rand_LastRun ; arg allows for modification required by the final run
	pop hl
	pop bc
	ret


.initializeRNG
	ld a, $ff
	ld [wRNG1], a
	pop hl
	pop bc
	ret

; multiplies h * l and puts the result in hl
; I'm sure croc 2 has this already but im not gonna find it just for this meme mod
HTimesL:
	push bc
	ld b, 0
	ld c, h
	ld a, l
	ld hl, 00
	jr .startLoop
.add
	add hl, bc
.loop
	sla c
	rl b
.startLoop
	srl a
	jr c, .add
	jr nz, .loop
	pop bc
	ret

; I never coded this into my ezgbc, but the premise is pretty simple
; Learned how from poketcg
; between 0 and a EXCLUSIVE
GetRandom:
	push hl
	ld h, a
	call Random
	ld a, [wRNG1]
	ld l, a
	call HTimesL
	ld a, h
	pop hl
	ret

