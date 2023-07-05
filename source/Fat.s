Fat
			STMFD	SP!, {lr}
			cmp		r0, #0
			bne		funcao
			mov		r0, #1
			bal		FimFat
funcao
			cmp		r2, #0
			bne		inicio
			mov		r2, #1
			mov		r1, r0
inicio
			cmp		r1, #1
			bgt		else
			bal		FimFat
else
			sub		r1, r1, #1
			bl		Multiplica
			bl		Fat
FimFat
			LDMFD	SP!, {lr}
			mov		pc, lr
			
			



Multiplica
			STMFD	SP!, {r4-r6, lr}
			mov		r6, r1
			
LOOP
			cmp		r6, #0
			beq		FimMultiplica
			ands		r4, r6, #1
			beq		ELSE
			add		r5, r5, r0
ELSE
			mov		r0, r0, LSL #1
			mov		r6, r6, LSR #1
			bal		LOOP
			
FimMultiplica
			mov		r0, r5
			LDMFD	SP!, {r4-r6, lr}
			mov		pc, lr
