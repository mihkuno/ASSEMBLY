.data
    num1: .float 5
    num2: .float 2

.text 
    lwc1 $f1, num1   # Load the first floating-point number
    lwc1 $f2, num2   # Load the second floating-point number
    
    div.s $f3, $f1, $f2  # Single-precision floating-point division
    
    li $v0, 2          # Set the system call code for printing a float
    mov.s $f12, $f3    # Set the float value to be printed
    syscall            # Make the system call
