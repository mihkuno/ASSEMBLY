.data
	num1: .word 31
	num2: .word 32
	mySpace: .asciiz " \n"

.text
	lw $t0, num1
	lw $t1, num2

	# (add t1 and t2, then store to t3)
	add $t3, $t0, $t1
	
	li $v0, 1
	move $a0, $t3
	syscall
	
	# (seperate the outputs)
	li $v0, 4
	la $a0, mySpace
	syscall

	# (or pass the result to a0 directly)	
	li $v0, 1
	add $a0, $t0, $t1
	syscall
