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

	value1 BYTE 2 DUP(9)


	
.code
main PROC
	
	; code goes here
	MOV EAX, 0
	MOV Al, value1
	;call WriteString				; call to print out strings
	call DumpRegs



	exit

main ENDP
END main
