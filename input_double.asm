

.data
	m1: .asciiz "Enter the value of PI: "
	
.text
	#display the text
	li $v0, 4
	la $a0, m1
	syscall
	
	#user input, get double value
	li $v0, 7
	syscall
	
	#f10 is used due to the value is 0.0 to add it to the input doubles
	li $v0, 3
	add.d $f12, $f0, $f2
	syscall