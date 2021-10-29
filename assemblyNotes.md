# Operands Types

[TOC]

x86 instruction formats

```[label:] mnemonic [operands][ ; comment ]```

Format:  opcode **destination**, **source**



```assembly
;	No operands
stc										; Carry flag has no operand

;	One operands
inc eax										; register
dec myBytes								; memory

;	Two operands
add ebx, ecx							; register register
sub eax, 25								; register, constant
add myByte, 25						;	memory, constant
add eax, 36*25						;	register. constant-expression

;	No operands
stc										; Carry flag has no operand
```



x86 instruction set uses different types of instruction operands.

- [x] Immediate		uses a numeric literal expression
- [x] Register             uses a named register in the CPU
- [x] Memory             references a memory location



## MOV Instruction



