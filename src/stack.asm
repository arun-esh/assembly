
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.data
	; data declarations go here
	myARRAY DWORD 1000h, 2000h, 3000h, 4000h

.code
main PROC

	push eax
	pop ecx
	call dumpregs
	
	exit

main ENDP


END main