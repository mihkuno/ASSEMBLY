.data

.text

	# (s0-s7 function save and restore) 
	# (t0-t7 not need to save )
	
	addi $s0, $zero, 10
	addi $s1, $zero, 4
	
	mul $t0, $s0, $s1
	
	li $v0, 1
	add $a0, $zero, $t0
	syscall 