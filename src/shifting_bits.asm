
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib


.data
	; data declarations go here
	
    



.code
main PROC
	MOV EAX, 0
	MOV AL, 6Bh
	call dumpregs

	shr al, 1
	call dumpregs

	shl al, 3
	call dumpregs
	

	
	exit

main ENDP
END main