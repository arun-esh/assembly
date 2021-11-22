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
	
	sumof PROC
		MOV EAX, 0
		MOV EBX, 10
		MOV ECX, 5
		ADD EAX, EBX
		ADD EAX, ECX
		call Dumpregs
		ret 
	Sumof ENDP
	exit
	
main ENDP
END main