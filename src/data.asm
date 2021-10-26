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

	sum DWORD 0

.code
main PROC
	
	; code goes here
	MOV EAX, 2
	ADD EAX, 2
	MOV sum, EAX

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
