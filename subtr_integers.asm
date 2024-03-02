.data
	num1: .word 20
	num2: .word 8

.text
	lw $t1, num1
	lw $t2, num2
	
	li $v0, 1
	sub $a0, $t1, $t2
	syscall