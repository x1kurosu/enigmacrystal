; Multiplier ratios for all stats from modifier -6 to +6
; (except accuracy, see data/battle/accuracy_multipliers.asm).

; This table is identical to data/battle/stat_multipliers.asm.
; This one is used by ApplyStatLevelMultiplier.

StatLevelMultipliers_Applied:
	db  25, 100 ; -6 =  25%
	db  28, 100 ; -5 =  28%
	db  33, 100 ; -4 =  33%
	db  40, 100 ; -3 =  40%
	db  50, 100 ; -2 =  50%
	db  66, 100 ; -1 =  66%
	db   1,   1 ;  0 = 100%
	db 115, 100 ; +1 = 115%
	db  13,  10 ; +2 = 130%
	db 145, 100 ; +3 = 145%
	db  16,  10 ; +4 = 160%
	db 175, 100 ; +5 = 175%
	db   2,   1 ; +6 = 200%
