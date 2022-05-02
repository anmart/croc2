; Triggers define a location on screen that, when stepped into, will execute a specified function
; Each screen has up to 8 triggers made up of the following:
; x location, y location, x range, y range, ? (arg), ? (arg), function pointer
; Pointers are to bank 02
GameTriggerTables: ; 2dfb9 (b:5fb9)
	dw SailorTriggerTables
	dw CossackTriggerTables
	dw CavemanTriggerTables
	dw IncaTriggerTables
SailorTriggerTables: ; 2dfc1 (b:5fc1)
	dw SailorHubTriggerTables
	dw SailorCageTriggerTables
	dw SailorCrowTriggerTables
	dw SailorItemsTriggerTables
	dw SailorBossTriggerTables
CossackTriggerTables: ; 2dfcb (b:5fcb)
	dw CossackHubTriggerTables
	dw CossackHerbTriggerTables
	dw CossackMinesTriggerTables
	dw CossackSnowmanTriggerTables
	dw CossackBossTriggerTables
CavemanTriggerTables: ; 2dfd5 (b:5fd5)
	dw CavemanHubTriggerTables
	dw CavemanRoboTriggerTables
	dw CavemanGearsTriggerTables
	dw CavemanWaterTriggerTables
	dw CavemanBossTriggerTables
IncaTriggerTables: ; 2dfdf (b:5fdf)
	dw IncaHubTriggerTables
	dw IncaLetterTriggerTables
	dw IncaMayorTriggerTables
	dw IncaJewelTriggerTables
	dw IncaBossTriggerTables
SailorHubTriggerTables: ; 2dfe9 (b:5fe9)
	dw SailorHub0Triggers
SailorCageTriggerTables: ; 2dfeb (b:5feb)
	dw SailorCage0Triggers
	dw SailorCageTriggerless_2e14f
	dw SailorCageTriggerless_2e14f
	dw SailorCageTriggerless_2e14f
	dw SailorCageTriggerless_2e14f
	dw SailorCageTriggerless_2e14f
	dw SailorCageTriggerless_2e14f
	dw SailorCageTriggerless_2e14f
	dw SailorCageTriggerless_2e14f
	dw SailorCageTriggerless_2e14f
SailorCrowTriggerTables: ; 2dfff (b:5fff)
	dw SailorCrowTriggerless_2e150
	dw SailorCrowTriggerless_2e150
	dw SailorCrowTriggerless_2e150
	dw SailorCrow3Triggers
	dw SailorCrow4Triggers
	dw SailorCrowTriggerless_2e150
	dw SailorCrowTriggerless_2e150
	dw SailorCrowTriggerless_2e150
	dw SailorCrowTriggerless_2e150
	dw SailorCrowTriggerless_2e150
	dw SailorCrowTriggerless_2e150
SailorItemsTriggerTables: ; 2e015 (b:6015)
	dw SailorItemsTriggerless_2e17b
	dw SailorItems1Triggers
	dw SailorItemsTriggerless_2e17b
	dw SailorItems3Triggers
	dw SailorItemsTriggerless_2e17b
	dw SailorItemsTriggerless_2e17b
	dw SailorItemsTriggerless_2e17b
	dw SailorItemsTriggerless_2e17b
	dw SailorItemsTriggerless_2e17b
	dw SailorItemsTriggerless_2e17b
	dw SailorItemsTriggerless_2e17b
	dw SailorItemsTriggerless_2e17b
	dw SailorItemsTriggerless_2e17b
SailorBossTriggerTables: ; 2e02f (b:602f)
	dw SailorBossTriggerless_2e1ae
CossackHubTriggerTables: ; 2e031 (b:6031)
	dw CossackHub0Triggers
CossackHerbTriggerTables: ; 2e033 (b:6033)
	dw CossackHerbTriggerless_2e1d8
	dw CossackHerb1Triggers
	dw CossackHerbTriggerless_2e202
	dw CossackHerbTriggerless_2e202
	dw CossackHerb4Triggers
	dw CossackHerbTriggerless_2e20c
	dw CossackHerbTriggerless_2e20c
	dw CossackHerbTriggerless_2e20c
	dw CossackHerbTriggerless_2e20c
	dw CossackHerbTriggerless_2e20c
CossackMinesTriggerTables: ; 2e047 (b:6047)
	dw CossackMinesTriggerless_2e20d
	dw CossackMinesTriggerless_2e20d
	dw CossackMines2Triggers
	dw CossackMinesTriggerless_2e231
	dw CossackMinesTriggerless_2e231
	dw CossackMines5Triggers
	dw CossackMinesTriggerless_2e231
	dw CossackMinesTriggerless_2e231
	dw CossackMines8Triggers
	dw CossackMinesTriggerless_2e231
	dw CossackMinesTriggerless_2e231
CossackSnowmanTriggerTables: ; 2e05d (b:605d)
	dw CossackSnowman0Triggers
	dw CossackSnowman1Triggers
	dw CossackSnowmanTriggerless_2e25c
	dw CossackSnowmanTriggerless_2e25c
	dw CossackSnowmanTriggerless_2e25c
	dw CossackSnowmanTriggerless_2e25c
	dw CossackSnowmanTriggerless_2e25c
	dw CossackSnowmanTriggerless_2e25c
	dw CossackSnowmanTriggerless_2e25c
	dw CossackSnowmanTriggerless_2e25c
	dw CossackSnowmanTriggerless_2e25c
	dw CossackSnowmanTriggerless_2e25c
	dw CossackSnowmanTriggerless_2e25c
	dw CossackSnowmanTriggerless_2e25c
CossackBossTriggerTables: ; 2e079 (b:6079)
	dw CossackBossTriggerless_2e25d
CavemanHubTriggerTables: ; 2e07b (b:607b)
	dw CavemanHub0Triggers
CavemanRoboTriggerTables: ; 2e07d (b:607d)
	dw CavemanRobo0Triggers
	dw CavemanRobo1Triggers
	dw CavemanRoboTriggerless_2e2b9
	dw CavemanRobo3Triggers
	dw CavemanRoboTriggerless_2e2fb
	dw CavemanRobo5Triggers
	dw CavemanRoboTriggerless_2e305
	dw CavemanRoboTriggerless_2e305
	dw CavemanRoboTriggerless_2e2fb
	dw CavemanRoboTriggerless_2e2fb
	dw CavemanRoboTriggerless_2e2fb
	dw CavemanRoboTriggerless_2e2fb
	dw CavemanRoboTriggerless_2e2fb
	dw CavemanRoboTriggerless_2e305
	dw CavemanRoboTriggerless_2e305
CavemanGearsTriggerTables: ; 2e09b (b:609b)
	dw CavemanGears0Triggers
	dw CavemanGearsTriggerless_2e31f
	dw CavemanGearsTriggerless_2e31f
	dw CavemanGearsTriggerless_2e31f
	dw CavemanGears4Triggers
	dw CavemanGears5Triggers
	dw CavemanGearsTriggerless_2e33a
	dw CavemanGearsTriggerless_2e33a
	dw CavemanGearsTriggerless_2e31f
	dw CavemanGearsTriggerless_2e31f
	dw CavemanGearsTriggerless_2e31f
	dw CavemanGearsTriggerless_2e31f
	dw CavemanGears12Triggers
	dw CavemanGearsTriggerless_2e33a
CavemanWaterTriggerTables: ; 2e0b7 (b:60b7)
	dw CavemanWater0Triggers
	dw CavemanWaterTriggerless_2e375
	dw CavemanWater2Triggers
	dw CavemanWater3Triggers
	dw CavemanWater4Triggers
	dw CavemanWater5Triggers
	dw CavemanWaterTriggerless_2e3ba
	dw CavemanWaterTriggerless_2e3ba
	dw CavemanWater8Triggers
	dw CavemanWaterTriggerless_2e3ba
	dw CavemanWater10Triggers
	dw CavemanWaterTriggerless_2e3ba
CavemanBossTriggerTables: ; 2e0cf (b:60cf)
	dw CavemanBossTriggerless_2e3cd
IncaHubTriggerTables: ; 2e0d1 (b:60d1)
	dw IncaHub0Triggers
IncaLetterTriggerTables: ; 2e0d3 (b:60d3)
	dw IncaLetterTriggerless_2e3f7
	dw IncaLetterTriggerless_2e3f7
	dw IncaLetter2Triggers
	dw IncaLetter3Triggers
	dw IncaLetterTriggerless_2e411
	dw IncaLetter5Triggers
	dw IncaLetterTriggerless_2e41b
	dw IncaLetterTriggerless_2e41b
	dw IncaLetterTriggerless_2e41b
	dw IncaLetterTriggerless_2e41b
	dw IncaLetter10Triggers
	dw IncaLetterTriggerless_2e41b
	dw IncaLetterTriggerless_2e41b
	dw IncaLetterTriggerless_2e41b
IncaMayorTriggerTables: ; 2e0ef (b:60ef)
	dw IncaMayorTriggerless_2e43e
	dw IncaMayor1Triggers
	dw IncaMayorTriggerless_2e448
	dw IncaMayor3Triggers
	dw IncaMayor4Triggers
	dw IncaMayor5Triggers
	dw IncaMayorTriggerless_2e48c
	dw IncaMayorTriggerless_2e48c
	dw IncaMayorTriggerless_2e48c
	dw IncaMayorTriggerless_2e48c
	dw IncaMayorTriggerless_2e48c
IncaJewelTriggerTables: ; 2e105 (b:6105)
	dw IncaJewelTriggerless_2e48d
	dw IncaJewel1Triggers
	dw IncaJewel2Triggers
	dw IncaJewelTriggerless_2e4b0
	dw IncaJewelTriggerless_2e4b0
	dw IncaJewel5Triggers
	dw IncaJewelTriggerless_2e4c2
	dw IncaJewelTriggerless_2e4c2
	dw IncaJewelTriggerless_2e4c2
	dw IncaJewel9Triggers
IncaBossTriggerTables: ; 2e119 (b:6119)
	dw IncaBossTriggerless_2e4dc
	dw IncaBossTriggerless_2e4dc
SailorHub0Triggers: ; 2e11d (b:611d)
	db 5
	trigger  40, 179,  6,  5,  0,  1, Func_9fc8
	trigger 224, 187,  6,  5,  1,  2, Func_9fc8
	trigger  64,  35,  6,  5,  2,  4, Func_9fc8
	trigger 200,  43,  6,  5, 24, 16, Func_9fc8
	trigger 135, 100,  4,  5,  3,  0, $5c65
SailorCage0Triggers: ; 2e146 (b:6146)
	db 1
	trigger  68, 164,  8,  4,  0,  0, $6073
SailorCageTriggerless_2e14f: ; 2e14f (b:614f)
	db 0
SailorCrowTriggerless_2e150: ; 2e150 (b:6150)
	db 0
SailorCrow3Triggers: ; 2e151 (b:6151)
	db 2
	trigger  52, 116, 16, 16,  0,  0, $619e
	trigger  76,  52, 16, 16,  1,  0, $619e
SailorCrow4Triggers: ; 2e162 (b:6162)
	db 3
	trigger 116, 204, 16, 16,  2,  0, $619e
	trigger 156, 204, 16, 16,  3,  0, $619e
	trigger 136,  80,  4,  8, 23,  0, Func_9fc8
SailorItemsTriggerless_2e17b: ; 2e17b (b:617b)
	db 0
SailorItems1Triggers: ; 2e17c (b:617c)
	db 1
	trigger  44, 108,  3,  4,  9,  0, $6056
SailorItems3Triggers: ; 2e185 (b:6185)
	db 5
	trigger 124,  56,  1,  0,  0,  0, $61b6
	trigger 140, 107,  5,  5,  0,  0, $60b2
	trigger 164, 147,  5,  5,  1,  0, $60b2
	trigger 188, 195,  5,  5,  2,  0, $60b2
	trigger 100,  44,  3,  4, 64,  0, $6056
SailorBossTriggerless_2e1ae: ; 2e1ae (b:61ae)
	db 0
CossackHub0Triggers: ; 2e1af (b:61af)
	db 5
	trigger 100,  44, 12,  5,  4,  1, Func_9fc8
	trigger  60,  52, 12,  5,  5,  2, Func_9fc8
	trigger 216, 158,  6, 10,  6,  4, Func_9fc8
	trigger 220,  37, 12,  5, 25, 32, Func_9fc8
	trigger 128, 125,  6,  5,  0,  0, $5c94
CossackHerbTriggerless_2e1d8: ; 2e1d8 (b:61d8)
	db 0
CossackHerb1Triggers: ; 2e1d9 (b:61d9)
	db 5
	trigger  72, 119,  7,  7,  0,  1, $5f5b
	trigger  72, 207,  7,  7,  1,  1, $5f5b
	trigger  56,  64,  7,  8,  0,  1, $5d2e
	trigger  72,  64,  7,  8,  1,  1, $5d2e
	trigger  88,  64,  7,  8,  2,  1, $5d2e
CossackHerbTriggerless_2e202: ; 2e202 (b:6202)
	db 0
CossackHerb4Triggers: ; 2e203 (b:6203)
	db 1
	trigger 136,  46,  5,  5,  7,  4, Func_9fc8
CossackHerbTriggerless_2e20c: ; 2e20c (b:620c)
	db 0
CossackMinesTriggerless_2e20d: ; 2e20d (b:620d)
	db 0
CossackMines2Triggers: ; 2e20e (b:620e)
	db 2
	trigger 180,  43,  1,  6,  0,  1, $5e27
	trigger 180,  84,  3,  4, 36,  0, $6056
CossackMines5Triggers: ; 2e21f (b:621f)
	db 1
	trigger  96,  48,  6,  5,  8,  4, Func_9fc8
CossackMines8Triggers: ; 2e228 (b:6228)
	db 1
	trigger 212, 176,  1,  0,  0,  0, $64d7
CossackMinesTriggerless_2e231: ; 2e231 (b:6231)
	db 0
CossackSnowman0Triggers: ; 2e232 (b:6232)
	db 4
	trigger 128,  63,  7,  7,  2,  1, $5f5b
	trigger 144, 103,  7,  7,  3,  1, $5f5b
	trigger 208,  63,  7,  7,  4,  1, $5f5b
	trigger 192, 103,  7,  7,  5,  1, $5f5b
CossackSnowman1Triggers: ; 2e253 (b:6253)
	db 1
	trigger 156,  28,  3,  4, 31,  0, $6056
CossackSnowmanTriggerless_2e25c: ; 2e25c (b:625c)
	db 0
CossackBossTriggerless_2e25d: ; 2e25d (b:625d)
	db 0
CavemanHub0Triggers: ; 2e25e (b:625e)
	db 5
	trigger  60,  44, 14,  5, 10,  1, Func_9fc8
	trigger 212,  52, 14,  5, 11,  2, Func_9fc8
	trigger 220, 180,  6, 12, 12,  4, Func_9fc8
	trigger 140,  75, 12,  5, 26, 64, Func_9fc8
	trigger  80, 179,  6,  5,  1,  0, $5c94
CavemanRobo0Triggers: ; 2e287 (b:6287)
	db 5
	trigger  40, 119,  7,  7,  6,  1, $5f5b
	trigger 184, 119,  7,  7,  7,  1, $5f5b
	trigger 136, 159,  7,  7,  8,  1, $5f5b
	trigger  88, 159,  7,  7,  9,  1, $5f5b
	trigger 200,  64,  7,  7,  0,  1, $5d2e
CavemanRobo1Triggers: ; 2e2b0 (b:62b0)
	db 1
	trigger  99, 196,  1,  6,  0,  1, $5d4c
CavemanRoboTriggerless_2e2b9: ; 2e2b9 (b:62b9)
	db 0
CavemanRobo3Triggers: ; 2e2ba (b:62ba)
	db 8
	trigger  88,  47,  7,  7, 10,  1, $5f5b
	trigger 184,  47,  7,  7, 11,  1, $5f5b
	trigger 192, 175,  7,  7, 12,  1, $5f5b
	trigger  64, 175,  7,  7, 13,  1, $5f5b
	trigger 132,  36, 12, 16,  0,  0, $5cfd
	trigger 108, 164, 12, 16,  1,  0, $5cfd
	trigger 156, 164, 12, 16,  2,  0, $5cfd
	trigger 212,  28,  3,  4, 32,  0, $6056
CavemanRoboTriggerless_2e2fb: ; 2e2fb (b:62fb)
	db 0
CavemanRobo5Triggers: ; 2e2fc (b:62fc)
	db 1
	trigger 136,  78,  6,  6, 13,  4, Func_9fc8
CavemanRoboTriggerless_2e305: ; 2e305 (b:6305)
	db 0
CavemanGears0Triggers: ; 2e306 (b:6306)
	db 3
	trigger  40, 159,  7,  7, 14,  1, $5f5b
	trigger 112, 159,  7,  7, 15,  1, $5f5b
	trigger 124,  28,  3,  4, 33,  0, $6056
CavemanGearsTriggerless_2e31f: ; 2e31f (b:631f)
	db 0
CavemanGears4Triggers: ; 2e320 (b:6320)
	db 2
	trigger 108,  51,  1,  6,  0,  1, $5f41
	trigger 116, 196,  3,  4, 34,  0, $6056
CavemanGears5Triggers: ; 2e331 (b:6331)
	db 1
	trigger 132, 196,  3,  4, 35,  0, $6056
CavemanGearsTriggerless_2e33a: ; 2e33a (b:633a)
	db 0
CavemanGears12Triggers: ; 2e33b (b:633b)
	db 2
	trigger 204,  43,  1,  6,  0,  0, $24ea
	trigger 204,  60,  3,  4, 65,  0, $6056
CavemanWater0Triggers: ; 2e34c (b:634c)
	db 5
	trigger 176, 111,  6,  7, 16,  1, $5f5b
	trigger  80, 111,  6,  7, 17,  1, $5f5b
	trigger 100, 100, 12, 16,  0,  1, $5cfd
	trigger 148, 100, 12, 16,  1,  1, $5cfd
	trigger  52, 188,  3,  4,  9,  0, $6056
CavemanWaterTriggerless_2e375: ; 2e375 (b:6375)
	db 0
CavemanWater2Triggers: ; 2e376 (b:6376)
	db 2
	trigger 184, 160,  4,  8, 16,  4, $6337
	trigger 180, 208, 16,  5, 14,  1, Func_9fc8
CavemanWater3Triggers: ; 2e387 (b:6387)
	db 2
	trigger 100,  99,  1,  6,  0,  1, $5d4c
	trigger 172, 115,  4,  8,  0,  1, $2523
CavemanWater4Triggers: ; 2e398 (b:6398)
	db 2
	trigger 184, 183,  7,  7, 18,  1, $5f5b
	trigger 112,  95,  7,  7, 19,  1, $5f5b
CavemanWater5Triggers: ; 2e3a9 (b:63a9)
	db 2
	trigger 132, 147,  1,  6,  0,  1, $5dc7
	trigger 132, 188,  3,  4, 36,  0, $6056
CavemanWaterTriggerless_2e3ba: ; 2e3ba (b:63ba)
	db 0
CavemanWater8Triggers: ; 2e3bb (b:63bb)
	db 1
	trigger 184, 160,  4,  8, 16,  4, $6372
CavemanWater10Triggers: ; 2e3c4 (b:63c4)
	db 1
	trigger  28,  59,  1,  6,  0,  0, $24e2
CavemanBossTriggerless_2e3cd: ; 2e3cd (b:63cd)
	db 0
IncaHub0Triggers: ; 2e3ce (b:63ce)
	db 5
	trigger 228, 208, 12,  5, 17,  1, Func_9fc8
	trigger  24, 208, 12,  5, 18,  2, Func_9fc8
	trigger 134,  48, 12,  5, 19,  4, Func_9fc8
	trigger 115,  96,  6,  5,  2,  0, $5c94
	trigger 116,  48,  6,  5,  3,  0, $5c94
IncaLetterTriggerless_2e3f7: ; 2e3f7 (b:63f7)
	db 0
IncaLetter2Triggers: ; 2e3f8 (b:63f8)
	db 3
	trigger 124, 179,  1,  6,  0,  1, $5ecb
	trigger 140,  27,  1,  6,  0,  1, $5e82
	trigger  36, 188,  3,  4, 36,  0, $6056
IncaLetterTriggerless_2e411: ; 2e411 (b:6411)
	db 0
IncaLetter5Triggers: ; 2e412 (b:6412)
	db 1
	trigger 152,  48,  6,  5, 20,  4, Func_9fc8
IncaLetterTriggerless_2e41b: ; 2e41b (b:641b)
	db 0
IncaLetter10Triggers: ; 2e41c (b:641c)
	db 2
	trigger  88, 215,  7,  7, 20,  1, $5f5b
	trigger  96, 111,  7,  7, 21,  1, $5f5b
IncaLetter3Triggers: ; 2e42d (b:642d)
	db 2
	trigger 100, 171,  1,  6,  0,  1, $5f2b
	trigger  76, 172,  3,  4, 34,  0, $6056
IncaMayorTriggerless_2e43e: ; 2e43e (b:643e)
	db 0
IncaMayor1Triggers: ; 2e43f (b:643f)
	db 1
	trigger 123,  72,  6,  9,  0,  1, $6323
IncaMayorTriggerless_2e448: ; 2e448 (b:6448)
	db 0
IncaMayor3Triggers: ; 2e449 (b:6449)
	db 3
	trigger 168,  92,  6, 16,  0,  2, $5cfd
	trigger 184, 140,  6, 16,  1,  2, $5cfd
	trigger 208, 212,  6, 16,  2,  2, $5cfd
IncaMayor4Triggers: ; 2e462 (b:6462)
	db 1
	trigger 116, 180,  3,  4, 66,  0, $6056
IncaMayor5Triggers: ; 2e46b (b:646b)
	db 4
	trigger 120,  80,  6,  5, 21,  4, Func_9fc8
	trigger  36, 123,  2, 14,  1,  0, $641d
	trigger 220, 123,  2, 14,  2,  0, $641d
	trigger 132, 155,  8,  3,  0,  0, $6403
IncaMayorTriggerless_2e48c: ; 2e48c (b:648c)
	db 0
IncaJewelTriggerless_2e48d: ; 2e48d (b:648d)
	db 0
IncaJewel1Triggers: ; 2e48e (b:648e)
	db 3
	trigger  40,  48,  6,  9,  0,  1, $62f8
	trigger 120, 104,  7,  7,  0,  1, $5d2e
	trigger 216, 136,  7,  7,  1,  1, $5d2e
IncaJewel2Triggers: ; 2e4a7 (b:64a7)
	db 1
	trigger 200, 168,  6,  9,  1,  1, $62f8
IncaJewelTriggerless_2e4b0: ; 2e4b0 (b:64b0)
	db 0
IncaJewel5Triggers: ; 2e4b1 (b:64b1)
	db 2
	trigger  48,  46,  5,  5, 22,  4, $256a
	trigger 156, 168,  8,  8,  0,  4, $63c9
IncaJewelTriggerless_2e4c2: ; 2e4c2 (b:64c2)
	db 0
IncaJewel9Triggers: ; 2e4c3 (b:64c3)
	db 3
	trigger  80,  80,  7,  8,  0,  1, $5d2e
	trigger 112,  80,  7,  8,  1,  1, $5d2e
	trigger 144,  80,  7,  8,  2,  1, $5d2e
IncaBossTriggerless_2e4dc: ; 2e4dc (b:64dc)
	db 0

