# 11100011 = 227
# 11011010 = 218
# 10001011 = 139
# 00111001 = 57
# 00001111 = 15

# use shift left logical with 2 shifts and answer the decimal equivalent
# use shift right logical with 2 shifts and answer the decimla equivalent



.data 
	space: .asciiz "\n"
	
.text
	`
	li  $t2, 227
	sll $t1, $t2, 2 # 908
	
	li   $v0, 1
	move $a0, $t1
	syscall
	