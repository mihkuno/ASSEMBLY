.data 
	myDouble: .double 3.14159265369
	
.text
	# print the double
	li $v0, 3
	ldc1 $f12, myDouble
	syscall