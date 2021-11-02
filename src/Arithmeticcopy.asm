TITLE

; Name: 
; Date: 
; ID: 
; Description: 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two files are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data

	; data declarations go here
	

.code
main PROC
	
	; code goes here
	;call DumpRegs ; displays registers in console

	
	Comment !
		Carry Set ; set carry flag
		al is 8 bit, so maximum we can set is 255
		Here when we add 255 + 2 = 257 which is more than 255, the carry flag is set.

		Carry flag will set in this case.
		!
	MOV eax, 0
	MOV al, 255			
	ADD al, 2
	call DumpRegs ; displays registers in console

	Comment !
		Carry Set ; set carry flag
		al is 8 bit, so maximum we can set is 255
		Here when we add 1 + 2 = 3, which is within the range.

		Carry flag won't be set in this case.
		!
	MOV al, 1			
	ADD al, 2
	call DumpRegs ; displays registers in console

	

	Comment !
	SUBTRACT
		Sub 2 from 1 - 2, it will set the carry flag.
		Invert Carry out of the MSB (0) --> (1)
		!
	MOV EAX, 0
	MOV al, 10
	SUB al, 15
	call DumpRegs ; displays registers in console

	Comment !
	SUBTRACT
		Sub 2 from 2 - 1, it won't set the carry flag.
		Invert Carry out of the MSB (1) --> (0)
		!

	MOV EAX, 0
	MOV al, 4
	SUB al, 2
	call DumpRegs ; displays registers in console


	exit

main ENDP
END main