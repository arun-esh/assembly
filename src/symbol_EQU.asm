TITLE

; Name: Test EQU 
; Date: 
; ID: 
; Description: 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two files are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib


pressKey EQU <"Press any key to continue..."> ; once declared, this can't be redefined in the same code.
; this is protect the accidental change as compared with '=' directive



.data

	; data declarations go here
	prompt BYTE pressKey
	

.code
main PROC
	
	; code goes here
	MOV EAX, 10000h			; EAX = 10000h
	ADD EAX, 40000h			; EAX = 50000h
	SUB EAX, 20000h			; EAX = 30000h	
	call DumpRegs 			; displays registers

	exit

main ENDP
END main
