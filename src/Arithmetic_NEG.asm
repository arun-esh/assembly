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

	NEG var1
	MOV eax, 0
	MOV al, var1
	call DumpRegs ; displays registers in console


	exit

main ENDP
END main