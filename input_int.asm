.data
	age: .asciiz "Enter your age: "
	message: .asciiz "\nYour age is: "
	
.text
	#display the text
	li $v0, 4
	la $a0, age
	syscall
	
	#get user input
	li $v0, 5
	syscall
	
	#store user input to register
	move $t0, $v0
	
	#display the text
	li $v0, 4
	la $a0, message
	syscall
	
	#display user input
	li $v0, 1
	move $a0, $t0
	syscall