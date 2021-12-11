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

	myARRAY WORD 100h, 200h, 300h, 400h
	

.code
main PROC

	; code goes here

	MOV EAX, 0

	MOV EDI, OFFSET myARRAY
	MOV ECX, LENGTHOF myARRAY
	mov ax, 0

	L1:
		ADD AX, [EDI]
		ADD EDI, TYPE myARRAY
		loop L1
	
	call DumpRegs 						; 	displays registers in console



	exit

main ENDP
END main