
// Euclidean algorithm
// principal - the gcd of two numbers doesn't change if the larger number is replaced by its difference with smaller number

// algo - in each iteration replace "first number by second number " & "second number by first mod second"
// when second number becomes zero, first number becomes gcd 



.main:
	mov r0,12   // r0 is first number
	mov r1,20    // r1 is second number

.start:

loop:
	cmp r1,0        //  compare if one number(r1) becomes zero
	beq .gcd        // if true the other number (r0) becomes gcd, go to label gcd and print r0
	mov r2,r1       // save r1 in temp register r2
	mod r3,r0,r1    // save r0 mod r1 in temp register r3
	mov r1,r3       // save r3 (r0 mod r1) in r1
	mov r0,r2;      // save r2 (initial value of r1 of current iteration) in r0
	b loop          // repeat the loop

.gcd:
	.print r0       // r0 is our gcd, so print
