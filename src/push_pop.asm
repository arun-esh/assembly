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

	var1 DWORD ?
	var2 WORD ?


.code
main PROC
	
	; code goes here
	MOV EAX, 0
	pushfd			; push the flags to stack
	call DumpRegs ; displays registers in console
	
	pop var1
	call DumpRegs ; displays registers in console
	
	MOV EAX, var1
	call DumpRegs ; displays registers in console
	
	exit
	
main ENDP
END main