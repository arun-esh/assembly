
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.data
	; data declarations go here

.code
main PROC
	MOV EAX, 1h
	MOV EBX, 2h
	MOV ECX, 3h
	call getEIP
	MOV EAX, 10h
	MOV EAX, 30h
	exit

main ENDP

getEIP PROC
	mov eax, [esp]
	ret
getEIP ENDP


END main