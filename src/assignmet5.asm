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
	array BYTE 10 DUP(?)
	

.code
main PROC
	
	; code goes here

	mov esi, offset array
	mov ecx, 20


	L1:
		push ecx
		mov ecx, lengthof array

		L2:
			mov eax, 26
			call RandomRange
			add eax, 65
			mov [esi], eax
			call WriteChar
		loop L2

		call Crlf
		pop ecx
		
		
	loop L1
	exit


main ENDP
END main