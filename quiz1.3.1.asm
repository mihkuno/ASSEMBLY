
# Quiz 1.3.1
.data
	textMember1: .asciiz "(Joeniño Cainday)"
	textHooray: .asciiz "\t\"We Did it!!!\""
.text
	li $v0, 4
	la $a0, textMember1
	syscall
	
	li $v0, 4
	la $a0, textHooray
	syscall
	
	
	
