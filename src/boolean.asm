
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib


.data
	; data declarations go here
	
    



.code
main PROC
	
	MOV AL, 01100001b
	call dumpregs
	AND AL, 01000001b
	call dumpregs

	MOV AL, 10110101b			; 5 bits = odd parity
	XOR AL, 0					
	call dumpregs				; Parity flag clear (odd)

	MOV AL, 11110101b			; 5 bits = Even parity
	XOR AL, 0					
	call dumpregs				; Parity flag set (even)

	
	exit

main ENDP
END main