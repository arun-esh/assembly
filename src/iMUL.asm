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
	call DumpRegs ; displays registers in console
	mov al, 48
	mov bl, 4
	imul bl
	
	call dumpmem
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
