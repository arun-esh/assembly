
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INTEGER_COUNT = 26

.data
	; data declarations go here
	str1  BYTE  "Enter a integer for expression 26 x ",0
	
	
	


.code
main PROC
	call Clrscr
	MOV EAX, 0
	call PromptForIntegers
	call dumpregs

	;EAX has the input integer

	mov ebx, eax
	shl ebx, 4
	push ebx

	mov ebx, eax
	shl ebx, 3

	shl eax, 1

	add eax, ebx
	pop ebx
	add eax, ebx

	call dumpregs

	
	

	exit

main ENDP

top1 PROC
	shl eax, 1
	ret
top1 ENDP

top2 PROC
	shl eax, 2
	ret
top2 ENDP

top3 PROC
	shl eax, 3
	ret
top3 ENDP

top4 PROC
	shl eax, 4
	ret
top4 ENDP

top5 PROC
	shl eax, 5
	ret
top5 ENDP
		
	

PromptForIntegers PROC USES EBX

	mov edx,OFFSET str1			; prompt for first integer
	call WriteString
	call ReadInt				; read integer into EAX

	;mov edx,OFFSET str2			; prompt for second integer
	;call WriteString
	;call ReadInt				; read integer into EAX
	call crlf					; go the next output line

	ret
PromptForIntegers ENDP

END main