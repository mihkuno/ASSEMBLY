.data
	m1: .asciiz "Enter the value of PI: "
	m2: .asciiz "\nPI value is: "
	
.text 
	#display the text
	li $v0, 4
	la $a0, m1
	syscall
	
	li $v0, 6
	syscall
	
	li $v0, 4
	la $a0, m2
	syscall
	
	li $v0, 2
	add.s $f12, $f0, $f4
	syscall