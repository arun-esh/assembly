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
	dwLIST LABEL DWORD
	arraY BYTE 55h, 66h
	wordLIST LABEL WORD
	intLIST	BYTE 00h, 10h, 00h, 20h


.code
main PROC
	
	; code goes here

	MOV EAX, dwLIST
	MOV CX, wordLIST
	MOV DL, intLIST
	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
