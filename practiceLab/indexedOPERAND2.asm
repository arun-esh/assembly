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
	myARRAY DWORD 1000h, 2000h, 3000h, 4000h

.code
main PROC
	
	; code goes here
	;call DumpRegs ; displays registers in console
	MOV ESI, 0
	MOV EAX, 0
	MOV EBP, OFFSET myARRAY
	call DumpRegs ; displays registers in console

	ADD EAX, [EBP + 12]
	call DumpRegs ; displays registers in console
	ADD ESI, 4

	ADD EAX, [myARRAY + ESI]
	;call DumpRegs ; displays registers in console
	ADD ESI, 4

	ADD EAX, [myARRAY + ESI]
	;call DumpRegs ; displays registers in console
	ADD ESI, 4

	ADD EAX, [myARRAY + ESI]
	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
