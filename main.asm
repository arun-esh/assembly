TITLE

; Name: Declaration
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
	value1 BYTE -2
	
	

.code
main PROC
	
	; code goes here
	MOVZX EAX, value1
	
	call DumpRegs 			; displays registers

	exit

main ENDP
	; additional procedures here
END main