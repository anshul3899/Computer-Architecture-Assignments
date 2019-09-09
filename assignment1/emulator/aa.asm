.main:
	mov r0, 7
	mov r1, 1
	mov r2, r0

	.loop:
		mul r1, r1, r2
		sub r2, r2, 1
		cmp r2, 1
		bgt .loop

	.print r1
	
	/*mov r2, 3
	mov r6, 109
	@not r2, r1
	mov r5, r6
	st r2, 1[r2]
	st r6, [r1]
	st r2, -7[r2]
	ld r5, [r1]
	.print r1, r2, r5*/
