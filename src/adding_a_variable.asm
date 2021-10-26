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
	SUM WORD 0	;create a variable named sum
.code
main PROC
	
	; code goes here
	MOV EAX, 0
	MOV EAX, 'ABCD'
	;ADD AX, -(3+4)*(6-1)

	MOV SUM, AX

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
