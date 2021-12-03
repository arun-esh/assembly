; Description: This program defines artists
; and outputs an artist's name.

TITLE MASM Template						(main.asm)

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two files are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib


.data
; define symbolic names
Surrealism BYTE "Salvador Dali", 0dh, 0ah, 0
Abstract BYTE "Jackson Pollock", 0dh, 0ah, 0
Impressionism BYTE "Renoir", 0dh, 0ah, 0

; define artist variables
artist1 = Surrealism
artist2 = Abstract
artist3 = Impressionism

.code
main PROC
	

	call DumpRegs

	exit
main ENDP

END main

; =======================================
; OUTPUT
; =======================================
COMMENT !

Salvador Dali

  EAX=75363358  EBX=7EFDE000  ECX=00000000  EDX=00405000
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=00401024  EFL=00000202  CF=0  SF=0  ZF=0  OF=0  AF=0  PF=0

Press any key to continue . . .

!
; =======================================
