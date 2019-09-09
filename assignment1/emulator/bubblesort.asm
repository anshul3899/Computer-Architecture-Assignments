.bubblesort:
	@ ADD YOUR CODE HERE
	mov r4, -1
	sub r3, r3, 1
	.loop1:
		add r4, r4, 1
		@.print r4
		cmp r4, r3
		beq .return
		mov r6, 0	
		sub r6, r3 ,r4
		sub r6, r6 ,1
		mov r5, -1
		mov r10, r2
		.loop2:
			add r5, r5, 1
			@.print r5
			cmp r5, r6
			beq .loop1
			ld r7, [r10]
			add r10, r10, 4
			ld r8, [r10]
			
			cmp r7, r8
			bgt .swap
			b .loop2
	.swap:
		@.print r7, r8
		mov r9, r8
		mov r8, r7
		mov r7, r9
		st r8, [r10]
		sub r10, r10, 4
		st r7, [r10]
		add r10, r10, 4
		b .loop2
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
