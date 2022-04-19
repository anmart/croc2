INCLUDE "macros.asm"
INCLUDE "constants.asm"

INCLUDE "vram.asm"

SECTION "WRAM0", WRAM0
	ds $9e0

; When transitioning screens or respawning, this is the Level/Screen to move to
wStoredLevel: ; c9e0
	ds $1

wStoredScreen: ; c9e1
	ds $1

	ds $96

wWorld: ; ca78
	ds $1

	ds $1

wLevel: ; ca7a
	ds $1

; Level player was in before previous screen transition
wLastLevel: ; ca7b
	ds $1

	ds $1

wScreen: ; ca7d
	ds $1

; screen player was in before prvious screen transition
wLastScreen: ; ca7e
	ds $1

	ds $9

; holds the location croc will spawn in when transitioning screens or respawning
wPlayerStoredX: ; ca88
	ds $1

wPlayerStoredY: ; ca89
	ds $1

	ds $10

; bit field [down] [up] [left] [right] correspond to 8 4 2 and 1 
wPlayerMovementDirection: ; ca9a
	ds $1

wPlayerX: ; ca9b
	ds $1

wPlayerY: ; ca9c
	ds $1

	ds $2

wPlayerX2: ; ca9f
	ds $1

wPlayerY2: ; caa0
	ds $1

	ds $19

; direction player is facing. Up, Left, Down, Right is 0, 1, 2, 3
wPlayerDirection: ; caba
	ds $1

; stored direction for the player to face when they screen transition or respawn
wStoredDirection: ; cabb
	ds $1

SECTION "wram end", WRAM0
wStoredWorld:
	ds $1
