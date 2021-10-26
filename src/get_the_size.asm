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
	list1 WORD 1000h, 2000h, 3000h, 4000h, 5000h
	
	list1Size = ($ - list1)/2			; can have any variable except size	
	 									; it has to come right after the list otherwise it will 
										; calculate the length of the other variable 

	list2 DWORD 10000000h,20000000h,30000000h,40000000h
	list2Size = ($ - list2)/4			; can have any variable except size	
	 									; it has to come right after the list otherwise it will
										; calculate the length of the other variable
	myString BYTE "This is a String"

	myStringSize = ($ - myString)	; can have any variable except size	
									; it has to come right after the list otherwise it will 
									; calculate the length of the other variable
	

.code
main PROC
	
	; code goes here
	MOV EAX, list1Size			; EAX = 10000h
	MOV EBX, 0
	MOV EBX, list2Size
	MOV ECX, 0
	MOV ECX, myStringSize	
	call DumpRegs 			; displays registers

	exit

main ENDP
END main

