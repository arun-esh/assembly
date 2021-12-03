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
	source BYTE "Hello World", 0
	target BYTE SIZEOF source DUP(0)

.code
main PROC
	
	; code goes here

	MOV EDX, 0
	MOV ESI, 0			; index register
	MOV ECX, SIZEOF source

	L1:
		MOVZX EDX, OFFSET source
		;call WriteString
		MOVZX target[ESI], EDX
		INC ESI
		
		loop L1
	call WriteString
	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
