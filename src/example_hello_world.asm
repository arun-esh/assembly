TITLE

; Name: 
; Date: 
; ID: 
; Description: 


.686
.model flat,c
.stack 100h
;ExitProcess PROTO, dwExitCode:dword
printf	PROTO arg1:Ptr Byte

.data

	; data declarations go here
	msg1	BYTE "Hello WOrld!!", 0AH,0

.code
	main	PROC
			INVOKE printf, ADDR msg1
			ret
			;Invoke ExitProcess,0

main endp
end