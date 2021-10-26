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
	list BYTE 10,20,30,40,50
	listSize = ($ - list)			; can have any variable except size	
	 								; it has to come right after the list otherwise it will 
									; calculate the length of the other varaibe 
	myString BYTE "This is a string"

	myStringSize = ($ - myString)	; can have any variable except size	
									; it has to come right after the list otherwise it will 
									; calculate the length of the other variable
	

.code
main PROC
	
	; code goes here
	MOV EAX, ListSize			; EAX = 10000h
	MOV EBX, 0
	MOV EBX, myStringSize	
	call DumpRegs 			; displays registers

	exit

main ENDP
END main
