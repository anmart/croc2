INCLUDE "macros.asm"
INCLUDE "constants.asm"

INCLUDE "engine/home.asm"

; These are by themselves. Map data is so fragmented that each map defines several sections
INCLUDE "data/levels/inca_boss.asm"

SECTION "Bank 1", ROMX[$4000], BANK[$1]
INCLUDE "engine/bank01.asm"

SECTION "Bank 23", ROMX[$4000], BANK[$23]
INCLUDE "engine/bank23.asm"