TotalizaVetor
				STMFD	SP!, {r4, r5, lr}
				mov		r4, r0
				mov		r5, r1
				ldr		r0, [r4]
				ldr		r1, [r4, #4]!
				sub		r5, r5, #1
				
LOOP
				cmp		r5, #0
				beq		FimTotalizaVetor
				ldr		r2, [r4, #4]!
				ldr		r3, [r4, #4]!
				bl		Soma64Bits
				sub		r5, r5, #1
				bal		LOOP
FimTotalizaVetor
				LDMFD	SP!, {r4, r5, lr}
				mov		pc, lr