Maior
		STMFD	SP!, {r4-r8, lr}
		
		ldr		r4, [r0] ;matriz
		mov		r1, #0 ;somafinal
		mov		r2, #0 ;linhafinal
		
		mov		r5, #0 ;i
		mov		r6, #20
LOOP1
		mov		r3, #0 ;soma
		mov		r7, #0 ;j
		mov		r8, #10
LOOP2
		add		r3, r3, r4
		add		r7, r7, #1
		ldr		r4, [r0, #4]!
		cmp		r7, r8
		bne		LOOP2
		
		cmp		r3, r1
		ble		ELSE
		mov		r1, r3
		mov		r2, r5
ELSE
		add		r5, r5, #1
		cmp		r5, r6
		bne		LOOP1
		
FimMaior
		mov		r0, r2
		LDMFD	SP!, {r4-r8, lr}
		mov		pc, lr
