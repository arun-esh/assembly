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
	myArray WORD 100h, 200h, 300h, 400h

.code
main PROC
	
	; code goes here
	MOV EDI, OFFSET myARRAY
	MOV ECX, LENGTHOF myARRAY
	MOV Eax, 0
	call DumpRegs ; displays registers in console

	L1:
		ADD AX, [edi]				; AX has myARRAY 1st element 
		ADD EDI, TYPE myARRAY		; TYPE returns the SIZE of variable
		Loop L1						
	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
