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
	array1 BYTE 10,20,30,40

	array2 WORD 15,25,35,45

	array3 BYTE 10,20,30,40
			  BYTE 50,60,70,80
			  BYTE 55,65,75,85
	
	

.code
main PROC
	
	; code goes here
	MOV EAX, 0
	MOV AL, array1

	MOV EBX, 0
	MOV BL, array1+1

	MOV ECX, 0
	MOV CL, array1+2

	MOV EDX, 0
	MOV DL, array1+3

	call DumpRegs 			; displays registers

	MOV EAX, 0
	MOV AX, array2

	MOV EBX, 0
	MOV BX, array2+2

	MOV ECX, 0
	MOV CX, array2+4

	MOV EDX, 0
	MOV DX, array2+6

	call DumpRegs 			; displays registers


	MOV EAX, 0
	MOV AL, array3

	MOV EBX, 0
	MOV BL, array3+1

	MOV ECX, 0
	MOV CL, array3+2

	MOV EDX, 0
	MOV DL, array3+11

	call DumpRegs 			; displays registers


	exit

main ENDP
	; additional procedures here
END main