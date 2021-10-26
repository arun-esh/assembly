.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:dword

.data
sum DWORD ?

.code
main PROC
    mov eax, 7 
    add eax, 5
    mov sum, eax 
 
    INVOKE ExitProcess, 0

main ENDP
END main