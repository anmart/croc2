MACRO begin_exits
	REDEF level_name EQUS \1
	DEF exit_index = 0
ENDM

MACRO exit
	{s:level_name}Exit_{d:exit_index}:
	DEF exit_index += 1
	db \#		
ENDM

MACRO end_exits
ENDM

;; Thanks to Rangi for the help :)
;; - Couldn't end up using it, at least not yet
;; there are SO MANY dumb work arounds in the level code
;
;MACRO _def_exit
;	REPT _NARG
;		db \1
;		SHIFT
;	ENDR
;ENDM
;
;MACRO begin_level_exits
;	DEF screen_index = 0
;	REDEF level_name EQUS \1
;	SECTION "{s:level_name} Exits", ROMX
;ENDM
;
;MACRO begin_screen_exits
;	{s:level_name}_Exits_{d:screen_index}:
;	DEF exit_index = 0
;ENDM
;
;MACRO exit
;    DEF exit_{d:exit_index}_data EQUS "\#"
;    DEF exit_index += 1
;ENDM
;
;MACRO exit_amount_modifier
;	DEF exit_mod = \1
;ENDM
;
;MACRO end_screen_exits
;	DEF exit_amount = exit_index
;	IF DEF(exit_mod)
;		REDEF exit_amount = exit_index + exit_mod
;	ENDC
;	db exit_amount
;	FOR n, exit_index
;		dw .exit_{d:n}
;	ENDR
;    FOR n, exit_index
;        .exit_{d:n}:
;        _def_exit {exit_{d:n}_data}
;        PURGE exit_{d:n}_data
;    ENDR
;	DEF screen_index += 1
;ENDM
;
;MACRO end_level_exits
;	SECTION "{s:level_name} Exit Table", ROMX
;	{s:level_name}_ExitTable:
;	FOR n, screen_index
;		dw {s:level_name}_Exits_{d:n}
;	ENDR
;ENDM

