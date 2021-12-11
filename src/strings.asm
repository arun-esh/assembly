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

	aName BYTE "Abraham Lincoln",0
	nameSize = ($ - aName) - 1
	

.code
main PROC

	; code goes here

	; Push the name on the stack.
		mov ecx,nameSize 
		mov esi,0

	L1: movzx eax,aName[esi] 
		push eax
		inc esi 
		loop L1

	; Pop the name from the stack, in reverse,
	; and store in the aName array.
	
	mov ecx,nameSize 
	mov esi,0

	L2: pop eax
	mov aName[esi],al 
	inc esi
	loop L2

	; Display the name.
	mov edx,OFFSET aName 
	call WriteString 
	call Crlf
	
	
	



	exit

main ENDP
END main