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
	one WORD 8002h
	two WORD 4321h

.code
main PROC
	
	; code goes here
	MOV EDX, 21348041h
	MOVSX, EDX, one
	MOVSX EDX, two	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
