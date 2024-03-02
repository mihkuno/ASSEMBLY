.data
	mySpace: .asciiz " \n"

.text
	addi $t0, $zero, 10
	addi $t1, $zero, 7
	
	div $t0, $t1
	
	mflo $s0 	# Quotient
	mfhi $s1	# Remainder

	# print the quotient	
	li $v0, 1
	move $a0, $s0
	syscall
	
	li $v0, 4
	la $a0, mySpace
	syscall
	
	# print the remainder
	li $v0, 1
	move $a0, $s1
	syscall
	