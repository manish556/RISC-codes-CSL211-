.main:
	mov r4, 101  // test case
	mov r0, 1	// prime or not
	mov r1, 0	// factor 1
	mov r2, 0	// factor 2
	mov r3, 0       // factor 3
	

.start:	cmp r4, 2
	beq .return     // if number is 2
	mov r5, 1        // counter initialy 1

.loop:  add r5, r5, 1     // loop
        add r6, r5, 1
        cmp r6, r4       // counter + 1 > number 
        bgt .return      		
      	mod r6, r4, r5    //  r6 is modulus
	cmp r6, 0         
	beq .not_a_prime     // if r6 is 0 go to not a prime
        b .loop          // loop ends

.not_a_prime:
	mov r0, 0       // not prime make r0 = 0
	cmp r1, 0  
	beq .getr1     // assign first factor in r1
        cmp r2, 0
	beq .getr2     // if first factor already assigned, assign second factor in r2
	cmp r3, 0
	beq .getr3    // if second factor already assigned, assign third factor in r3
        b .loop      // go to loop

.getr1:
	mov r1, r5    // assign in r1
	b .loop       // go to loop

.getr2:
	mov r2, r5   // assign in r2
	b .loop       // go to loop

.getr3:
	mov r3, r5	//assign in r3
	b .loop     // go to loop mid

.return:
	.print r0
	.print r1
	.print r2
	.print r3



