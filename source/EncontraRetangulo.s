EncontraRetangulo
					STMFD	SP!, {r4-r11, lr}
					
					mov		r4, r0 ;r4 = vetor
					mov		r5, r1 ;r5 = num
					mov		r8, r0 ;r8 = vetor
					mov		r9, r1 ;r9 = num
					
					;		a partir daqui se calcula o x e o y do inf esq
					ldr		r6, [r4] ;x preto
					ldr		r7, [r4, #4]! ;y preto
					sub		r5, r5, #1 ;num-1
					
					add		r0, r6, #1 ;x vermelho sup dir
					add		r1, r7, #1 ;y vermelho sup dir
					
LOOP2
					ldr		r2, [r4, #4]! ;x preto
					ldr		r3, [r4, #4]! ;y preto
					bl		AjustaBordaSupDir
					sub		r5, r5, #1
					cmp		r5, #0
					bne		LOOP2
					
					mov		r10, r0 ;guardo o x inf esq
					mov		r11, r1 ;guardo o y inf esq
					
					;a		partir daqui se calcula o x e o y do sup dir
					ldr		r6, [r8] ;x preto
					ldr		r7, [r8, #4]! ;y preto
					sub		r9, r9, #1 ;num-1
					
					sub		r0, r6, #1 ;x vermelho inf esq
					sub		r1, r7, #1 ;y vermelho inf esq
LOOP
					ldr		r2, [r8, #4]! ;x preto
					ldr		r3, [r8, #4]! ;y preto
					bl		AjustaBordaInfEsq
					sub		r9, r9, #1
					cmp		r9, #0
					bne		LOOP
					
					mov		r2, r10 ;guarda o x sup dir
					mov		r3, r11 ;guarda o y sup dir
					
FimEncontraRetangulo
					LDMFD	SP!, {r4-r11, lr}
					
					mov		pc, lr
					
					
					
AjustaBordaInfEsq
					cmp		r2, r0
					bgt		ELSE
					mov		r0, r2
					sub		r0, r0, #1
ELSE
					cmp		r3, r1
					bgt		FimAjustaBordaInfEsq
					mov		r1, r3
					sub		r1, r1, #1
					
FimAjustaBordaInfEsq
					mov		pc, lr
					
AjustaBordaSupDir
					cmp		r2, r0
					blt		ELSE2
					mov		r0, r2
					add		r0, r0, #1
ELSE2
					cmp		r3, r1
					blt		FimAjustaBordaSupDir
					mov		r1, r3
					add		r1, r1, #1
FimAjustaBordaSupDir
					mov		pc, lr

