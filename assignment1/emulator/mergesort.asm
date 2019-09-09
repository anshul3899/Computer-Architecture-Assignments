.mergesort:
	@ ADD YOUR CODE HERE
	cmp r4, r2
	bgt .continue
	ret
	.continue: 
		add r5, r4, r2
		div r5, r5, 8
		mul r5, r5, 4
		@add r5, r5, r2	
		sub sp, sp, 16
		st r2, [sp]
		st r4, 4[sp]
		st r5, 8[sp]
		st ra, 12[sp]
		mov r4, r5
		call .mergesort
		ld r2, [sp]
		ld r4, 4[sp]
		ld r5, 8[sp]
		ld ra, 12[sp]
		add sp, sp, 16
		sub sp, sp, 16
		st r2, [sp]		 
		st r4, 4[sp]  
		st r5, 8[sp]
		st ra, 12[sp]
		add r2, r5, 4
		call .mergesort
		ld r2, [sp]	
		ld r4, 4[sp]
		ld r5, 8[sp]
		ld ra, 12[sp]
		add sp, sp, 16
		sub sp, sp, 4
		st ra, [sp]
		call .merge
		ld ra, [sp]
		add sp, sp, 4
		ret
		
.merge: 	
	@ ADD YOUR CODE HERE
	@.print r2, r4, r5

	add r6, r3, 4
	@mov r6, r12
	add r7, r5, 4 
	@add r12, r6, r4 
	mov r13, r2		@k
	mov r9, 0

	.loop3: 
		cmp r13, r5
		bgt .loop4
		cmp r7, r4
		bgt .loop5
		ld r10, [r13] 	@L[i]  
		ld r11, [r7]  	@R[j]
		cmp r10, r11  
		bgt .elss
		st r10, [r6]
		add r13, r13, 4
		b .iff
		.elss: 
			st r11, [r6]
			add r7, r7, 4
		
		.iff:
			add r6, r6, 4
		
		b .loop3

	.loop4:
		cmp r7, r4
		bgt .go
		ld r10, [r7]
		st r10, [r6]
		add r6, r6, 4
		add r7, r7, 4
		cmp r4, r7
		bgt .loop4
		beq .loop4
		b .go

	.loop5:
		cmp r13, r5
		bgt .go
		ld r10, [r13]
		st r10, [r6]
		add r6, r6, 4
		add r13, r13, 4
		cmp r5, r13
		bgt .loop5
		beq .loop5

	.go:
		add r6, r3, 4
		mov r13, r2

	.loop6:
		ld r10, [r6]
		st r10, [r13]
		add r13, r13, 4
		add r6, r6, 4  
		cmp r4, r13
		bgt .loop6
		beq .loop6

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
	call .mergesort
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

