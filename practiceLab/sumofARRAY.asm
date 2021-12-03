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

	myarray DWORD 1000h, 2000h, 3000h, 4000h

.code
main PROC
	
	; code goes here
	call DumpRegs ; displays registers in console

	MOV ESI, OFFSET myARRAY			; ESI has the address of the myARRAY

	MOV EAX, [ESI]					; Moved value of address [esi] to EAX (1000)

	ADD ESI, 4 						; DWORD jump of 4, ESI has value at index1

	ADD EAX, [ESI]					; index 0 and index1 are added

	ADD ESI, 4						; DWORD jump of 4, ESI has value at index2

	ADD EAX, [ESI]					; index 0+1+2 are added

	ADD ESI, 4						; DWORD jump of 4, ESI has value at index3

	ADD EAX, [ESI]					; index 0+1+2+3 are added


	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
