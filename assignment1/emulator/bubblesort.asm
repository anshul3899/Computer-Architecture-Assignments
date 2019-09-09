.bubblesort:
	@ ADD YOUR CODE HERE
	mov r5, 0
	sub r4, r4, 4
	.loop1:
		sub r6, r4, r5
		mov r7, 0
		@.print r5
		add r5, r5, 4
		cmp r4, r5
		bgt .loop2
		beq .return
		b .return
		.loop2:
			add r8, r7, 4
			ld r9, [r7]
			ld r10, [r8]
			cmp r9, r10
			bgt .cont
			beq .iff
			b .iff
			.cont: 
				st r9, [r8]
				st r10, [r7]
			.iff:
				nop
			add r7, r7, 4
			cmp r6, r7
			bgt .loop2
			beq .loop1
			b .loop1
	.return:
		ret
.main:

	@ Loading the values as an array into the registers
	mov r0, 0    
	mov r1, 12	@ replace 12 with the number to be sorted
	st r1, 0[r0]
	mov r1, 7	@ replace 7 with the number to be sorted
	st r1, 4[r0]
	mov r1, 11  @ replace 11 with the number to be sorted
	st r1, 8[r0]
	mov r1, 9   @ replace 9 with the number to be sorted
	st r1, 12[r0]
	mov r1, 3   @ replace 3 with the number to be sorted
	st r1, 16[r0]
	mov r1, 15  @ replace 15 with the number to be sorted
	st r1, 20[r0]
	@ EXTEND ON SIMILAR LINES FOR MORE NUMBERS
	
	mov r2, 0       @ Starting address of the array
	
	@ Retreive the end address of the array
	mov r3, 6	@ REPLACE 6 WITH N, where, N is the number of numbers being sorted
	
	@ ADD YOUR CODE HERE
	mul r4, r3, 4
	call .bubblesort
	
	@ ADD YOUR CODE HERE
	
	@ Print statements
	ld r1, 0[r0]
	.print r1
	ld r1, 4[r0]
	.print r1
	ld r1, 8[r0]
	.print r1
	ld r1, 12[r0]
	.print r1
	ld r1, 16[r0]
	.print r1
	ld r1, 20[r0]
	.print r1
	@ EXTEND ON SIMILAR LINES FOR MORE NUMBERS