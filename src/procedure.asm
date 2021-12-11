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

	

	
	MOV EAX, 1h
	MOV EBX, 2h
	MOV ECX, 3h
	

	call SUMof
	
	call DumpRegs

	call get_eip
	
	

	

	exit

main ENDP

SUMof PROC
	add eax, ebx
	add eax, ecx
	ret
	SUMof ENDP


END main