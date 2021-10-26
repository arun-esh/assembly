TITLE

; Name: ADD SUB of two integers 
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
