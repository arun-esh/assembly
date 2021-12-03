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
	var1 BYTE ?
	var2 WORD ?
	var3 DWORD ?
	var4 QWORD ?
.code


.code
main PROC
	
	; code goes here
	MOV EAX, 0
	MOV EBX, 0
	MOV ECX, 0
	MOV EDX, 0


	mov eax,TYPE var1 
	mov ebx,TYPE var2 
	mov ecx,TYPE var3 
	mov edx,TYPE var4

	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
