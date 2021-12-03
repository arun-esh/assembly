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

	myARRAY BYTE 10h, 20h, 30h, 40h

	pTARRAY DWORD myARRAY
	;pTARRAY DWORD OFFSET myARRAY		; alternate syntax

.code
main PROC
	
	; code goes here
	MOV EAX, 0
	call DumpRegs ; displays registers in console
	MOV ESI, pTARRAY
	call DumpRegs ; displays registers in console
	MOV AL, [ESI]
	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
