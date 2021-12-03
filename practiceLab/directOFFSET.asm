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
	myBYTEArray 	BYTE 	10h, 20h, 30h, 40h

	myWORDArray		WORD	100h, 200h, 300h, 400h

	myDWORDArray	DWORD	1000h, 2000h, 3000h, 4000h

	testArray		WORD 	1234h, 5678h, 9734h

	A 				SWORD	1234h, -1
	B 				SDWORD	55h, 66778899h

.code
main PROC
	
	; code goes here

	;	BYTE ARRAY
	MOV	EAX, 0 					;	EAX	=	0
	MOV	AL, myBYTEArray 		;	AL 	=	10h

	MOV	EBX, 0 					;	EBX	=	0
	MOV	BL, [myBYTEArray+2] 	;	BL 	=	30h Element at Index 3
	
	MOV	ECX, 0 					;	ECX	=	0
	MOV	CL, [myBYTEArray+3] 	;	CL 	=	30h Element at Index 3

	MOV	EDX, 0 					;	EDX	=	0
	MOV	DL, [myBYTEArray+1] 	;	DL 	=	30h Element at Index 3

	call DumpRegs 				; 	displays registers in console
	


	;	WORD ARRAY

	MOV	EAX, 0 						;	EAX	=	0
	MOV	AX, myWordArray 			;	AX 	=	100


	MOV	EBX, 0 						;	EBX	=	0
	MOV	BX, [myWordArray+6] 		;	BX 	=	100
	;call DumpRegs 					; 	displays registers in console

	MOV	ECX, 0 						;	ECX	=	0
	MOV	CX, [myWordArray+4] 		;	CX 	=	300h Element at Index 2
	;call DumpRegs 					; 	displays registers in console

	MOV	EDX, 0 						;	EDX	=	0
	MOV	DX, [myWordArray+2] 		;	DX 	=	400h element at Index 3
	call DumpRegs 					; 	displays registers in console


	; DWORD ARRAY

	MOV	EAX, 0 							;	EAX		=	0
	MOV	EAX, myDWordArray 				;	EAX 	=	1000h

	MOV	EBX, 0 							;	EBX		=	0
	MOV	EBX, [myDWordArray+8] 			;	EBX 	=	1000h
	;call DumpRegs 						; 	displays registers in console

	MOV	ECX, 0 							;	ECX		=	0
	MOV	ECX, [myDWordArray+12] 			;	ECX 	=	4000h
	;call DumpRegs 						; 	displays registers in console

	MOV	EDX, 0 							;	EDX		=	0
	MOV	EDX, [myDWordArray+4] 			;	EDX 	=	2000h
	call DumpRegs 						; 	displays registers in console

	; testArray 	WORD 	1234h, 5678h, 9702h

	MOV EAX, 0
	MOV AX, testArray

	MOV EBX, 0
	MOV BX, [testArray+2]

	MOV ECX, 0
	MOV CX, [testArray+3]

	MOV EDX, 0
	MOV DX, testArray+4
	call DumpRegs 						; 	displays registers in console
	
	

	exit

main ENDP
END main
