# 
# Program Name: HelloWorld.s
# Author: Joshika Suresh
# Date: 12/26/23
# Class: EN605.204.82.FA23
# Purpose: Prints out "Hello World"
#

.text
.global main
main:
	# push
	SUB sp, sp, #4
	STR lr, [sp]

	# print out Hello World
	LDR r0, =helloWorld
	BL printf


	# pop
	LDR lr, [sp]
	ADD sp, sp, #4
	MOV pc, lr

.data
	helloWorld: .asciz "Hello World\n"
