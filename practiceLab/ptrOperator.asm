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
	myDouble DWORD 12345678h
	myBytes		BYTE 12h,34h,56h,78h

.code
main PROC
	
	; code goes here
	MOV EAX, 0
	MOV EBX, 0
	MOV ECX, 0
	MOV EDX, 0

	MOV AL, BYTE PTR myDouble			;78h
	MOV BL, BYTE PTR [myDouble + 1]		;56h
	MOV CL, BYTE PTR [myDouble + 2]		;34h
	MOV DX, WORD PTR myDouble			;5678h
	call DumpRegs ; displays registers in console
	MOV CX, WORD PTR [myDouble + 2]		;1234h
	call DumpRegs ; displays registers in console

	MOV EAX, 0
	MOV EBX, 0
	MOV ECX, 0
	MOV EDX, 0

	MOV AX, WORD PTR [myBytes]
	MOV BX, WORD PTR [myBytes+2]
	MOV ECX, DWORD PTR [myBytes]
 	


	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
