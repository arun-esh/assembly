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

	var1 DWORD 10
	PRODUCT DWORD ?


.code
main PROC
	
	; code goes here

	MOV EAX, 5
	MOV EBX, var1
	iMUL EBX						; imul instruction multiply the content of EAX with the instruction operand 
	MOV PRODUCT, EAX
	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main