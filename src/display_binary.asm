
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INTEGER_COUNT = 26

.data
	; data declarations go her
	val1 word 2000h
	val2 word 0100h


.code
main PROC
	
	MOV eax,0
	MOV EDX, 0
	MOV EBX, 0

	mov al, 5h
	mov bl, 10h
	mul bl

	;call dumpregs

	MOV eax,0
	MOV EDX, 0
	MOV EBX, 0

	mov ax, val1
	mul val2
	call dumpregs
	COMMENT !
		EBX = 00000000 
		ECX = 001C10AA 
		EDX = 00000020 
		ESI = 001C10AA 
		EDI = 001C10AA 
		EIP = 001C3691 
		ESP = 00EFF818 
		EBP = 00EFF824 
		EFL = 00000A07 


		CF=1  SF=0  ZF=0  OF=1  AF=0  PF=1


		!

	exit

main ENDP

END main