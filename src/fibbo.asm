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
	fib1 BYTE 1;
	fib2 BYTE 1;

.code
main PROC
	
	; code goes here
	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
