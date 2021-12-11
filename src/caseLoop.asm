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
	myList WORD 1,2,3,4,5
	Uarray BYTE 5
	

.code
main PROC
	
	; code goes here
	MOV EAX, 0
	MOV AL, 0078h
	MOV AH, 56h
	MOV eBX, 0
	mov ebx, 5h
	;MOV AL,Uarray
   ; MOVZX EBX,Uarray+2
    ;MOVZX ECX,Uarray+4
    ;MOVZX EDX,Uarray+6
    call DumpRegs ; displays registers in console

	
	
	
		

	call DumpRegs ; displays registers in console
	exit

main ENDP
END main