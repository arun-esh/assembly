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
    
    mov bl, 8h     ; mov 8 to BL
    MOVZX EBX, BL  ; BL will copied over and rest will be filled with 0s
    call dumpRegs

    COMMENT -
    
    Output:
    It will not preserve the sign and will fill all the rest of the bits with 0s.
    In this case, EBX has some random value, moved to BL just for understanding
    purposes. MOVZX is called zero extension. Just MOV will crash here as size
    is not the same of both the operands.
    All upper bits will get replaced by 0s.

    EAX=00000000  EBX=00000008  ECX=00000000  EDX=00402080
    ESI=00000000  EDI=00000000  EBP=0031FF48  ESP=0031FF34
    EIP=004020AB  EFL=00000247  CF=1  SF=0  ZF=1  OF=0  AF=0  PF=1

    -

    ; Sign Extension

    MOV AX, -9h
    MOVSX EAX, AL

    call dumpRegs

    COMMENT -
    
    Output:
    It will preserve the sign and will fill all the rest of the bits with sign bit.
    If sign bit is zero, then with 0's, and if sign bit is 1,hten with 1's.


    EAX=FFFFFFF7  EBX=00000008  ECX=00000000  EDX=00402080
    ESI=00000000  EDI=00000000  EBP=0031FF48  ESP=0031FF34
    EIP=004020AB  EFL=00000247  CF=1  SF=0  ZF=1  OF=0  AF=0  PF=1

    -

	exit

main ENDP
END main
