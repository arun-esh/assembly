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


	myArray WORD 10, 20,
				 30, 40,
				 50, 60

	anotherArray WORD 100h, 200h
				 WORD 300h, 400h
				 WORD 500h, 600h

	new WORD 800h

.code
main PROC
	
	; code goes here
	
	MOV ECX, SIZEOF array2
	MOV EBX, SIZEOF array1

	MOV EDX, SIZEOF myArray			; C
	MOV EAX, LENGTHOF myArray		; 6

	MOV EDX, SIZEOF anotherArray		; 4
	MOV EAX, LENGTHOF anotherArray		; 2

	MOV BX, [anotherArray+12]



	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
