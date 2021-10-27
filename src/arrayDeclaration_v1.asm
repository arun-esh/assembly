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
	arrayBYTE BYTE 10,20,30,40
			  BYTE 50,60,70,80
			  BYTE 55,65,75,85

	
	

.code
main PROC
	
	; code goes here
	MOV EAX, 0
	MOV AL, arrayBYTE

	MOV EBX, 0
	MOV BL, arrayBYTE+1

	MOV ECX, 0
	MOV CL, arrayBYTE+2

	MOV EDX, 0
	MOV DL, arrayBYTE+11

	call DumpRegs 			; displays registers


	exit

main ENDP
	; additional procedures here
END main