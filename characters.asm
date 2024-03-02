.data
	myCharacter: .byte 'J'
	mySpace: .asciiz " \n"
.text
	li $v0, 4
	la $a0, myCharacter
	la $a1, mySpace
	syscall