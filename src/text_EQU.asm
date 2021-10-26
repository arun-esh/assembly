TITLE

; Name: TEXTEQU
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

	PROCEDURE TEXTEQU <PROC>			; Using TEXTEQU to redefine 'PROC' as 'PROCEDURE'

.code
main PROCEDURE
	
	; code goes here
	MOV EAX , 0
	ADD EAX, 10
	call DumpRegs 			; displays registers

	exit

main ENDP
END main
