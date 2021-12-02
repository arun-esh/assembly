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

.code
main PROC
	
	; code goes here
	PUSH EBP
	MOV EBP, ESP
	SUB ESP, 476
	PUSH EBX
	PUSH ESI
	PUSH EDI
	LEA EDI, DWORD PTR [EBP-476]
	MOV ECX, 119
	MOV EAX, -858993460
	REP STOSD
	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
