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

	firstName BYTE "Tom", 00dh,0ah

.code
main PROC
	
	MOV EDX, offset firstname
	call writestring

	

	exit

main ENDP
END main