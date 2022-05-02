; EXITS
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

; TRIGGERS
MACRO trigger
	db \1
	db \2
	db \3
	db \4
	db \5
	db \6
	dw \7
ENDM
