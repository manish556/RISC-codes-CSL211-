.main:
	mov r0, 100    // given number
	mov r3, 0     // r3 is zero if not perfect square , 1  if it is
.start:
	mov r1,0      // r1 is counter
loop:	add r1,r1,1   // incrementation
	mul r2,r1,r1   // r2 is temp var saving square of counter
	cmp r2,r0       // compare counter square and given number
	beq .equal     // if they are equal make r3 1
	cmp r2,r0       // compare counter square and given number
	bgt .return     // if equal go to return
	b loop          // repeat the process
.equal:
	mov r3,1       // make r3 1 (when perfect square)
.return:
	.print r3       // print r3
