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
	var1 BYTE 11
	var2 BYTE 14

.code
main PROC
	
	; code goes here
	call DumpRegs ; displays registers in console

	DEC var1				; decreasing the value of var1
	MOV eax, 0				; clearing EAX for clear visibility
	MOV al, var1			; decreased value of var1 moved to al
	call DumpRegs ; displays registers in console

	INC var2
	MOV ebx, 0
	MOV bl, var2
	call DumpRegs ; displays registers in console

	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main