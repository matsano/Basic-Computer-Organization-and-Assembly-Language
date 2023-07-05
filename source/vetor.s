		
		ldr		r2, [r0] ;variavel = vetor[0]
		mov		r4, r0 ;memória da posição i, começando i = 0
for		ldr		r5, [r4] ;vetor[i]
		cmp		r5, r2 ;vetor[i] - variavel
		blt		if ;vetor[i] - variavel < 0
		bal		loop ;else
		
		
if		ldr		r2, [r4] ;variavel = vetor[i]
		bal		loop
		
loop		add		r4, r4, #4 ;i++ memoria
		add		r6, r6, #1 ;i++ numero
		cmp		r6, r1 ;i - quantidade
		bne		for ;i - quantidade != 0
		
		END