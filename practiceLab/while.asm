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
    COUNT WORD 5
.code
main PROC
	
	; code goes here
    MOV EBX, 0 
    
    call DumpRegs ; displays registers in console
    top:cmp ebx, COUNT
        INC EBX
        call DumpRegs ; displays registers in console
        jmp top


	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
