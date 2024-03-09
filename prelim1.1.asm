.data
    textNum1: .asciiz "Number 1 ="
    textNum2: .asciiz "Number 2 ="
    textNum3: .asciiz "Number 3 ="
    textNum4: .asciiz "Number 4 ="
    textNum5: .asciiz "Number 5 ="
    textSpace: .asciiz "\n"

.text

        li $t0, 2
	
	# 30 + 2 = 32
	addi $t1, $t0, 30
	
	# 32 - 28 = 4
	subi $t2, $t1, 28 
	
	# 4 * 4 = 16
	mul $t3, $t2, $t2
	
	# 32 / 4 = 8
	divu $t4, $t1, $t2

	
	
	# Number 1 =
	li $v0, 4
	la $a0, textNum1
	syscall
	
	# 32
	li $v0, 1
	move $a0, $t1
	syscall
	
	# \n
	li $v0, 4
	la $a0, textSpace
	syscall
	
	
	
	
	
	# Number 2 =
	li $v0, 4
	la $a0, textNum2
	syscall
	
	# 16
	li $v0, 1
	move $a0, $t3
	syscall
	
	# \n
	li $v0, 4
	la $a0, textSpace
	syscall
	
	
	
	
	
	# Number 3 =
	li $v0, 4
	la $a0, textNum3
	syscall
	
	# 8
	li $v0, 1
	move $a0, $t4
	syscall
	
	# \n
	li $v0, 4
	la $a0, textSpace
	syscall
	
	
	
	
	
	# Number 4 =
	li $v0, 4
	la $a0, textNum4
	syscall
	
	# 4
	li $v0, 1
	move $a0, $t2
	syscall
	
	# \n
	li $v0, 4
	la $a0, textSpace
	syscall
	
	
	
		
	
	# Number 5 =
	li $v0, 4
	la $a0, textNum5
	syscall
	
	# 2
	li $v0, 1
	move $a0, $t0
	syscall
	
	# \n
	li $v0, 4
	la $a0, textSpace
	syscall
	
	
	