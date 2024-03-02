.data

.text
	addi $s0, $zero, 4
	
	# Shift left logical (sll) shifts the bits to the left
	sll $t0, $s0, 3    
	
	# 4 * 2^(3)
	# 4 * 8
	# = 32
	
	li $v0, 1
	move $a0, $t0
	syscall	 