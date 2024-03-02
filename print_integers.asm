.data
	myAge: .word 21
	myText: .asciiz "My age is: "
	myTextNext: .asciiz " years old\n"
.text
	li $v0, 4
	la $a0, myText
	syscall
	
	li $v0, 1
	lw $a0, myAge
	syscall
	
	li $v0, 4
	la $a0, myTextNext
	syscall