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
	var1 BYTE 50h
	var2 BYTE 60h
	var3 BYTE 70h
	var4 BYTE 80h

.code
main PROC
	
	; code goes here
	MOV EAX, 0		
	MOV AL, var1
	
	MOV EBX, 0		
	MOV BL, var2

	MOV ECX, 0		
	MOV CL, var3

	MOV EDX, 0		
	MOV DL, var4


	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main