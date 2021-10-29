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
	var1 mem16 985Bh
	var2 WORD 785Bh

.code
main PROC
	
	; code goes here

	MOV EAX, 0		
	MOV AX, var1

	MOV EBX, 0		
	MOV BX, var2
	

	call DumpRegs ; displays registers in console


	MOV EAX, 0		
	MOVSX EAX, var1

	MOV EBX, 0		
	MOVSX EBX, var2
	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main