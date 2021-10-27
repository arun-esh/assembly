TITLE

; Name: Get the Size of list, String
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
	value SBYTE 136
	

.code
main PROC
	
	; code goes here
	MOV EAX, 0
	MOVZX AX, value
	call DumpRegs 			; displays registers

	exit

main ENDP
END main