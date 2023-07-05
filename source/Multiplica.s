Multiplica
			
LOOP
			cmp		r1, #0
			beq		FimMultiplica
			ands		r2, r1, #1
			beq		ELSE
			add		r3, r3, r0
ELSE
			mov		r0, r0, LSL #1
			mov		r1, r1, LSR #1
			bal		LOOP
			
FimMultiplica
			mov		r0, r3
			mov		pc, lr
