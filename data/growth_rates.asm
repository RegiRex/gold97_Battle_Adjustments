growth_rate: MACRO
; [1]/[2]*n**3 + [3]*n**2 + [4]*n - [5]
	dn \1, \2
	if \3 & $80 ; signed
		db -\3 | $80
	else
		db \3
	endc
	db \4, \5
ENDM

GrowthRates:
; entries correspond to GROWTH_* (see constants/pokemon_data_constants.asm)
	growth_rate 5, 6,  -5,   0,  10 ; Medium Fast
	growth_rate 3, 4,   0,   0,  30 ; Slightly Fast
	growth_rate 3, 4,   5,   0,  70 ; Slightly Slow
	growth_rate 6, 5, -15, 100, 140 ; Medium Slow
	growth_rate 4, 5, -10,   0,  10 ; Fast
	growth_rate 6, 5,   0,   0,  20 ; Slow
