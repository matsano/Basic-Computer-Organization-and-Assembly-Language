Divisao
			STMFD	SP!, {r4, r5, lr}
			
			mov		r4, r1
			
LOOP
			cmp		r4, r0
			bge		FimDivisao
			add		r4, r4, r1
			add		r5, r5, #1
			bal		LOOP
			
FimDivisao
			mov		r0, r5
			
			LDMFD	SP!, {r4, r5, lr}
			mov		pc, lr
