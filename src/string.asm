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


pressKey EQU <"Press any key to continue...", 0>

.data

	; data declarations go here
	; greeting BYTE "Welcome to the Encryption Demo program ", 0 ; each charcater is a BYTE (?)
	
	prompt BYTE pressKey ; remember what Aisha taught me



.code
main PROC
	
	; code goes here
	;MOV EDX, OFFSET greeting	; OFFSET: the address of the first byte of the string
	;CALL WRITESTRING			; call to print out strings
	
	
	
	

	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
