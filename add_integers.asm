.data
	num1: .word 31
	num2: .word 32
	mySpace: .asciiz " \n"

.text
	lw $t0, num1
	lw $t1, num2
	
	add $t3, $t0, $t1
	
	li $v0, 1
	move $a0, $t3
	syscall
	
	# (seperate the outputs)
	li $v0, 4
	la $a0, mySpace
	syscall
	# or do it like this
	
	li $v0, 1
	add $a0, $t0, $t1
	syscall