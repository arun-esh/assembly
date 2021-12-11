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
	myARRAY WORD 10h, 20h, 30h, 40h

.code
main PROC
	
	; code goes here

	push myARRAY
	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
