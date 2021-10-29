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
	var1 BYTE 255
	var2 BYTE 255

	var3 sBYTE -180
	var4 sBYTE -100

.code
main PROC
	
	; code goes here
	;call DumpRegs ; displays registers in console
	Comment !
		Var1 and var2 has the highest value a BYTE can hold.
		If we add them, then there will be some changes in the flags.

		Carry flag will set in this case.
		!
	MOV eax, 0
	MOV al, var1			
	ADD al, var2
	call DumpRegs ; displays registers in console

	Comment !
	ZERO FLAG
		Var1 and var2 has the same value a BYTE can hold.
		If we SUBTRACT them, then there will be some changes in the flags.

		ZERO flag will set in this case.
		!
	MOV eax, 0
	MOV al, var1			
	SUB al, var2
	call DumpRegs ; displays registers in console


	Comment !
	NEG
		NEGATE any non-zero value, it will set the carry flag.

		Carry flag will set in this case.
		!
	MOV EAX, 0
	MOV al, 1
	NEG al		

	call DumpRegs ; displays registers in console

	Comment !
	SUBTRACT
		SUb 2 from 1 - 2, it will set the carry flag.

		Carry flag will set in this case.
		!
	MOV EAX, 0
	MOV al, 1
	SUB al, 2
		

	call DumpRegs ; displays registers in console
	exit

main ENDP
END main