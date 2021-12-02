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

    ; NO Operand

    stc             ; set Carry Flag
    call DumpRegs   ; displays registers in console

    ; One Operand
	
    mov eax, 0      ; setting EAX to 0
    INC EAX         ; Increment the EAX=1

    call dumpRegs   ; Displays registers in console

    DEC EAX         ; decrement the EAX=0

	call DumpRegs ; displays registers in console

    ; ZERO Extenstion
    ; Let's move content of EBX to EAX
    call dumpRegs

    ; mov EAX,EBX 
    call dumpRegs   ; Display registers
    
    movzx bl, 8     ; mov 8 to AL using Zero extension
    call dumpRegs
	exit

main ENDP
END main
