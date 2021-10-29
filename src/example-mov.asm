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
	var2 WORD 785Bh

.code
main PROC
	
	; code goes here

	MOV EAX, 5
	MOV BX, var1
	iMUL BX
	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main