
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.data
	; data declarations go here
	myARRAY DWORD 1000h, 2000h, 3000h, 4000h

.code
main PROC

	MOV esi, offset myARRAY
	call progARRAY
	call dumpregs
	
	exit

main ENDP

progARRAY PROC
MOV EAX, 0
MOV ECX, lengthof myARRAY
L1:
	ADD eax, [esi]
	add esi, type DWORD
	loop L1
	ret
progARRAY ENDP


END main