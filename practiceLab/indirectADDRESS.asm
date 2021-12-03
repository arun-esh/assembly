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

	val1 BYTE 10h, 20h, 30h, 40h
	val2 BYTE 50h, 60h, 70h, 80h

.code
main PROC
	
	; code goes here
	MOV EAX, 0
	MOV EBX, 0
	MOV ECX, 0
	MOV EDX, 0

	call DumpRegs ; ESI has 00000000

	MOV ESI, OFFSET val1	; ESI will act as pointer, it has the value 10h
	call DumpRegs 			; ESI has the address 00404004 of val1

	MOV AL, [esi]			; 10h
 	MOV BL, [esi+3]			; 40h

 	; How to get the address of the variable
 	; Destination has to be 32 bit as OFFSET are of 32 bits

 	MOV EAX, OFFSET val1		; 00404000
 	LEA EBX, val2				; 
 	
 	MOV AX, [EBX]

 	MOV EAX, 1


 
	


	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
