
# Quiz 1.2
# Make an assembly program that can process arithmetic
# Group (Joeniño Cainday, Jasper Come)

.data
	textDifference: .asciiz "Difference = "
	textSum:	.asciiz "Sum = "
	textProduct: 	.asciiz "Product = "
  	textRemainder:	.asciiz "Remainder = "
	textQuotient:	.asciiz "Quotient = "
	textSpace: 	.asciiz " \n"

.text
	addi $t0, $zero, 30
	addi $t1, $zero, 4
	addi $t2, $zero, 5
		
	# === Product ===
	# 5 * 4 = 20
	mul $s0, $t1, $t2
	
	# print the product text
	li $v0, 4
	la $a0, textProduct
	syscall
	
	# print the product
	li $v0, 1
	move $a0, $s0
	syscall
	
	# print the space
	li $v0, 4
	la $a0, textSpace
	syscall
	
	
	# === Division ===
	# 20 / 4 = 5
	div $s0, $t1
	mflo $s1 	# Quotient
	
	# print the quotient text
	li $v0, 4
	la $a0, textQuotient
	syscall
	
	# print the quotient
	li $v0, 1
	move $a0, $s1
	syscall
	
	# print the space
	li $v0, 4
	la $a0, textSpace
	syscall
	

	# === Addition ===
	# 100 + 20 = 120
	add $s2, $s0, 100
	
	# print the sum text
	li $v0, 4
	la $a0, textSum
	syscall
	
	# print the sum
	li $v0, 1
	move $a0, $s2
	syscall
	
	# print the space
	li $v0, 4
	la $a0, textSpace
	syscall
	
		
	# === Subtraction ===
	# 120 - 30 = 90
	
	sub $s3, $s2, $t0 
		
	# print the difference text
	li $v0, 4
	la $a0, textDifference
	syscall
	
	# print the difference
	li $v0, 1
	move $a0, $s3
	syscall
	
	# print the space
	li $v0, 4
	la $a0, textSpace
	syscall
	
	
	
	
	
	
	
	
	