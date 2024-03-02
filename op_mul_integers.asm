.data

.text

	# 3 ways to multiply
	# 	mul - 3 registers with overflow
	# 	mult - 2 registers, without overflow (uses hi and lo registers) 
	# 	sll - shift left logical, efficient but less flexibility

	# (s0-s7 function save and restore) 
	# (t0-t7 not need to save )
	
	addi $s0, $zero, 10
	addi $s1, $zero, 4
	
	mul $t0, $s0, $s1
	
	li $v0, 1
	add $a0, $zero, $t0
	syscall 