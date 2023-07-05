
@cont1
M = 0

@cont2
M = 0

@A
M = 0

(LOOP)
	@1000
	D = A
	@cont2
	A = D + M
	D = M
	@A
	M = D
	@cont2
	M = M + 1
	@A
	D = M
	@945
	D = A - D
	@LOOP
	D; JGT
	@cont1
	M = M + 1
	@A
	D = M
	@1045
	D = A - D
	@LOOP
	D; JGE
	@cont1
	M = M - 1
	D = M
	@0
	M = D