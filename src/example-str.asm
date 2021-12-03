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


	string1 BYTE "Welcome to the Encryption demo Program"
		  BYTE " created by Kip.",0dh,0ah
		  BYTE "If you wish to modify this program, Please "
		  BYTE "send me a copy.", 0dh, 0ah, 0



	string2 BYTE "Checking Account:",0dh,0ah,0dh,0ah,
					"1. Create a new account",0dh,0ah,
					"2. Deposit money",0dh,0ah,
					"3. Withdraw money",0dh,0ah,
					"4. Check balance",0dh,0ah,
					"5. Exit",0dh,0ah,
					"Enter your choice: ",0dh,0ah,0
	
	string3 BYTE "Hello, there!",\						; / will concatenate two source codes lines
				" Please enter your name: ",0dh,0ah,0


	string4 BYTE "Testing"
	
.code
main PROC
	
	; code goes here
	MOV EDX, OFFSET string1
	call WriteString				; call to print out strings
	call DumpRegs

	MOV EDX, OFFSET string2
	call WriteString				; call to print out strings
	call DumpRegs 					; displays registers in console

	MOV EDX, OFFSET string3
	call WriteString				; call to print out strings
	call DumpRegs 					; displays registers in console

	MOV EDX, OFFSET string4
	;MOV Dl, var1
	call WriteString				; call to print out strings
	call DumpRegs 					; displays registers in console

	exit

main ENDP
END main
