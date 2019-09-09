 .quicksort:
		@ ADD YOUR CODE HERE
		cmp r3, r2 
		bgt .continue
		b .return
		.continue:
			sub sp, sp, 4
			st ra, [sp]
			call .partition
			ld ra, [sp]
			add sp, sp, 4
			sub sp, sp, 16
			st r2, [sp]
			st r3, 4[sp]
			st r5, 8[sp]
			st ra, 12[sp]
			sub r5, r5, 4
			mov r3, r5
			call .quicksort
			ld r2, [sp]
			ld r3, 4[sp]
			ld r5, 8[sp]
			ld ra, 12[sp]
			add sp, sp, 16
			sub sp, sp, 16
			st r2, [sp]
			st r3, 4[sp]
			st r5, 8[sp]
			st ra, 12[sp]
			add r5, r5, 4
			mov r2, r5
			call .quicksort
			ld r2, [sp]
			ld r3, 4[sp]
			ld r5, 8[sp]
			ld ra, 12[sp]
			add sp, sp, 16
			b .return
		.return:
			ret
 .partition:
	ld r6, [r3]   	@ pivot
	sub r5, r2, 4	@ i
	mov r7, r2		@ j
	.loop:
		ld r8, [r7]
		cmp r6, r8
		bgt .cont
		b .iff
		.cont:
			add r5, r5, 4
			ld r11, [r5]
			ld r10, [r7]
			st r11, [r7]
			st r10, [r5]
		.iff:
			nop
		add r7, r7, 4
		cmp r3, r7
		bgt .loop
		b .out
	.out:
		add r9, r5, 4
		ld r11, [r9]
		ld r10, [r3]
		st r11, [r3]
		st r10, [r9]
		add r5, r5, 4
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

	mov r2, 0          @ Starting address of the array
	
	@ Retreive the end address of the array
	mov r3, 5	@ REPLACE 5 WITH N-1, where, N is the number of numbers being sorted
	mul r3, r3, 4		
	add r4, r2, r3
	
	
 	@ ADD YOUR CODE HERE 

	call .quicksort

 	@ ADD YOUR CODE HERE

	@ Print statements for the result
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

