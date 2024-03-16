.data
	m1: .asciiz "\nHello, "
	m2: .asciiz "your name?\n"
	userInput: .space 20
	
.text
	li $v0, 4
	la $a0, m2
	syscall
	
	li $v0, 8
	la $a0, userInput 
	li $a1, 20
	syscall
	
	li $v0, 4
	la $a0, m1
	syscall
	
	li $v0, 4
	la $a0, userInput
	syscall
	
	# exit
	li $v0, 10
	syscall