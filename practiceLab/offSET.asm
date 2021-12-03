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
	bVal BYTE ?
	wVal WORd ?
	dVal DWORD ?
	dVAL2 DWORD ?

.code
main PROC
	
	; code goes here
	MOV ESI, OFFSET bVAL
	call DumpRegs ; displays registers in console
	MOV ESI, OFFSET wVAL
	call DumpRegs ; displays registers in console
	MOV ESI, OFFSET dVAL
	call DumpRegs ; displays registers in console
	MOV ESI, OFFSET dVAL2
	call DumpRegs ; displays registers in console
	

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
