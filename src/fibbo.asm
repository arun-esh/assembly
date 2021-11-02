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
	; call DumpRegs ; displays registers in console
	
	TEMP1 DWORD 1
	TEMP2 DWORD 1
	VALUE DWORD ?
	

.code
main PROC
	
	; code goes here
	MOV EAX, 0
	MOV EBX, 0
	MOV ECX, 2
	;call DumpRegs ; displays registers in console

	L1:
		 
		MOV EAX, TEMP1
		MOV EBX, TEMP1
		call DumpRegs ; displays registers in console
		loop L1


	MOV ECX, 5
	L2:
		MOV EAX, TEMP1
		ADD EAX, TEMP2
		
		MOV EBX, TEMP1

		MOV TEMP1, EAX
		MOV TEMP2, EBX
		
		call DumpRegs ; displays registers in console
		loop L2
	exit


main ENDP
END main
