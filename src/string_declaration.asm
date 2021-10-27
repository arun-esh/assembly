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

	greeting1 BYTE "Tom",00dh,0ah,0

.code
main PROC
	
	; code goes here
	MOV EDX, OFFSET greeting1
	call WriteString
	;call ReadString 		; ask user to type

	;call WriteString
	

	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
