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

	ds $1

; A bitfield corresponding to which key items have been collected in this level
; lower 5 bits are the Gems
; next 3 bits are level specific. (The Items in the box on the pause menu)
wKeyItems: ; c9e3
	ds $1

wMaximumWorldProgress: ; c9e4
	ds $1

	ds $4

; a bitfield corresponding to how far the player has progressed
; upper nibble: worlds beaten, lower nibble: levels beaten in current world
; From high to low: [inca] [caveman] [cossack] [sailor] [boss] [lv 3] [lv 2] [lv 1]
; world level progress is reset when changing world, or loaded from wMaximumWorldProgress
wGameProgress: ; c9e9
	ds $1

	ds $8e

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

	ds $22

; Used in CollectItem as a decrementing counter
wTempCounter: ; cade
	ds $1

; Used in CollectItem to keep track of what item croc is in the process of collecting
wTemp_cadf: ; cadf
	ds $1

	ds $a

wTriggerXRange: ; caea
	ds $1
wTriggerYRange: ; caeb
	ds $1
wTriggerArg1: ; caec
	ds $1
wTriggerArg2: ; caed
	ds $1
wTriggerX: ; caee
	ds $1
wTriggerY: ; caef
	ds $1
