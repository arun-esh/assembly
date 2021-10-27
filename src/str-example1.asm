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
	greeting1 BYTE "Welcome to the Encryption demo Program"
		  BYTE "created by Kip.",0dh,0ah
		  BYTE "If you wish to modify this program, Please "
		  BYTE "send me a copy.", 0dh, 0ah, 0

.code
main PROC
	
	; code goes here
	MOV EDX, OFFSET greeting1
	call WriteString
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
