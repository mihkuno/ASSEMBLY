.data
	textNum1: .asciiz "Number 1 ="
	textNum2: .asciiz "Number 2 ="
	textNum3: .asciiz "Number 3 ="
	textNum4: .asciiz "Number 4 ="
	textNum5: .asciiz "Number 5 ="
	textTitle: .asciiz "Printing Doubles 5.5 & 2.2\n"
	textSpace: .asciiz "\n"
	
	num1: .double 5.5
	num2: .double 2.2


.text
	
	ldc1 $f2, num1
	ldc1 $f4, num2
	
	
	# Printing Doubles 5.5 & 2.2
	li $v0, 4
	la $a0, textTitle
	syscall
	
	
	# Number 1 =
	li $v0, 4
	la $a0, textNum1
	syscall
	
	# 5.5 + 2.2
	li $v0, 3
	add.d $f12, $f2, $f4	# 5.5 + 2.2
	syscall

	# \n
	li $v0, 4
	la $a0, textSpace
	syscall
	
	
	
	
	# Number 2 =
	li $v0, 4
	la $a0, textNum2
	syscall
	
	# 5.5 + 2.2
	li $v0, 3
	mul.d $f12, $f2, $f4	# 5.5 * 2.2
	syscall

	# \n
	li $v0, 4
	la $a0, textSpace
	syscall
	
	

	
	
	# Number 3 =
	li $v0, 4
	la $a0, textNum3
	syscall
	
	# 5.5 + 2.2
	li $v0, 3
	div.d $f12, $f2, $f4	# 5.5 / 2.2
	syscall

	# \n
	li $v0, 4
	la $a0, textSpace
	syscall
	
	
	
		
	# Number 4 =
	li $v0, 4
	la $a0, textNum4
	syscall
	
	# 5.5 + 2.2
	li $v0, 3
	sub.d $f12, $f2, $f4	# 5.5 - 2.2
	syscall

	# \n
	li $v0, 4
	la $a0, textSpace
	syscall
	
	