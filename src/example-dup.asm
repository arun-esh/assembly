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
	;arrB  BYTE  10h,20h,30h,40h




	
.code
main PROC
	
	; code goes here
	mov eax,13

	sub eax,2

	mov ebx, 1

	call DumpRegs



	exit

main ENDP
END main
