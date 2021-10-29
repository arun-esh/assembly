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
	var1 WORD 10
	PRODUCT WORD ?


.code
main PROC
	
	; code goes here

	MOV AX, 5
	MOV BX, var1
	iMUL BX
	MOV PRODUCT, AX
	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main