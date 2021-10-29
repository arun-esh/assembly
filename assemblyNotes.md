# Operands Types

x86 instruction formats

```[label:] mnemonic [operands][ ; comment ]```

<button style="background-color: lightgreen; color: black; border: 2px solid white; border-radius:10px; font-size: 18px;" type="button">Format:  opcode **destination**, **source**	</button>

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

- [ ] Immediate		uses a numeric literal expression

- [ ] Register             uses a named register in the CPU

- [ ] Memory             references a memory location

  

