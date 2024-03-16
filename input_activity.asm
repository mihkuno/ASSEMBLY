

.data
	msg1: .asciiz "Enter A: "
	msg2: .asciiz "Enter B: "
	msg3: .asciiz "Name of Member 1: "
	msg4: .asciiz "Name of Member 2: "
	msg5: .asciiz "\nThe result is: "
	msgsub: .asciiz "\n\nSubtraction: \n"
	msgmul: .asciiz "\n\nMultiplication: \n"
	msgdiv: .asciiz "\n\nDivision: \n"
	space: .asciiz "\n"
	userInput: .space 20

.text

	#print Name of Member 1
	li $v0, 4
	la $a0, msg3
	syscall
	
	#get member 1
	li $v0, 8
	la $a0, userInput 
	li $a1, 20
	syscall
	
	#print member 1
	li $v0, 4
	la $a0, userInput
	syscall

	#print Name of Member 2
	li $v0, 4
	la $a0, msg4
	syscall
	
	#get member 2
	li $v0, 8
	la $a0, userInput 
	li $a1, 20
	syscall
		
	#print member 2
	li $v0, 4
	la $a0, userInput
	syscall
	
	
	
	
	#print Subtraction
	li $v0, 4
	la $a0, msgsub
	syscall
	
	
	
	#print Enter A
	li $v0, 4
	la $a0, msg1
	syscall
	
	#get number A
	li $v0, 6
	syscall
	
	#store to f1 
	mov.s $f1, $f0



	
	#print Enter B
	li $v0, 4
	la $a0, msg2
	syscall
	
	#get number B
	li $v0, 6
	syscall
	
	#store to f2
	mov.s $f2, $f0
	
	
	
	#subtract a - b
	sub.s $f3, $f1, $f2
	
	#print The result is: 
	li $v0, 4
	la $a0, msg5
	syscall
	
	#print result 
	li $v0, 2
	mov.s $f12, $f3
	syscall
	
	
	
	
	
	#print Multiplication
	li $v0, 4
	la $a0, msgmul
	syscall
	
	
	#print Enter A
	li $v0, 4
	la $a0, msg1
	syscall
	
	#get number A
	li $v0, 6
	syscall
	
	#store to f1 
	mov.s $f1, $f0



	
	#print Enter B
	li $v0, 4
	la $a0, msg2
	syscall
	
	#get number B
	li $v0, 6
	syscall
	
	#store to f2
	mov.s $f2, $f0
	
	
	
	
	# multiply a * b
	mul.s $f3, $f1, $f2
	
	
	#print The result is: 
	li $v0, 4
	la $a0, msg5
	syscall
	
	#print result 
	li $v0, 2
	mov.s $f12, $f3
	syscall
	
	
	
	

	
		
			
				
					

	#print Division
	li $v0, 4
	la $a0, msgdiv
	syscall
	
	
	#print Enter A
	li $v0, 4
	la $a0, msg1
	syscall
	
	#get number A
	li $v0, 6
	syscall
	
	#store to f1 
	mov.s $f1, $f0



	
	#print Enter B
	li $v0, 4
	la $a0, msg2
	syscall
	
	#get number B
	li $v0, 6
	syscall
	
	#store to f2
	mov.s $f2, $f0
	
	
	
	
	# multiply a * b
	div.s $f3, $f1, $f2
	
	
	#print The result is: 
	li $v0, 4
	la $a0, msg5
	syscall
	
	#print result 
	li $v0, 2
	mov.s $f12, $f3
	syscall
	
	
	
	#exit the program
	li $v0, 10
	syscall
	
		