		
		mov		r1, #1
		mov		r2, #1
		mov		r3, #0
		
		cmp		r0, #2
		bge		else
		bal		fim
		
else		cmp		r0, #2
		beq		fim
		mov		r3, r1
		add		r1, r1, r2
		mov		r2, r3
		sub		r0, r0, #1
		bal		else
		
fim
		END
