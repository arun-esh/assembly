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

	arrayWORD WORD 15,25,35,45
	
	

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
	MOV DL, arrayBYTE+3

	call DumpRegs 			; displays registers

	MOV EAX, 0
	MOV AX, arrayWORD

	MOV EBX, 0
	MOV BX, arrayWORD+2

	MOV ECX, 0
	MOV CX, arrayWORD+4

	MOV EDX, 0
	MOV DX, arrayWORD+6

	call DumpRegs 			; displays registers

	exit

main ENDP
	; additional procedures here
END main