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
	byte1 BYTE 10,20,30
	array1 WORD 30 DUP(?), 0,0
	array2 WORD 5 DUP(3 DUP(?))

.code
main PROC
	
	; code goes here

	MOV ECX, LENGTHOF array2
	MOV EBX, LENGTHOF array1
	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
