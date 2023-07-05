		cmp		r0, r1
		bgt		r1Menor
		mov		r0, r1
r1Menor
		cmp		r0, r2
		bgt		r2Menor
		mov		r0, r2
r2Menor
		cmp		r0, r3
		bgt		r3Menor
		mov		r0, r3
r3Menor
		END
