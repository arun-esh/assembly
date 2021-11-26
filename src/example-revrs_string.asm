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

	myString BYTE "ABC", 0
	myStringSize = ($ - myString)-1
	
	getName BYTE ?


.code
main PROC
	
	; code goes here
	MOV EAX, 0
	MOV EDX, OFFSET myString
	call WriteString
	call DumpRegs ; displays registers in console
	
	MOV ECX, myStringSize
	MOV ESI, 0
	call DumpRegs ; displays registers in console
	
	Loop1:
		movzx eax, mystring[esi]
		call DumpRegs ; displays registers in console
		push eax
		inc esi
		loop Loop1

	MOV ECX, myStringSize
	MOV ESI, 0

	Loop2:
		pop eax
		mov getName[esi], al
		inc esi
		loop Loop2
	;call DumpRegs ; displays registers in console
		mov EDX, OFFSET getName
		call WriteString
		call Crlf
	exit
	
main ENDP
END main