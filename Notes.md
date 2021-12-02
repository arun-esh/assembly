# Notes
# Table of Contents

* Instructions
* [XCHG](#xchg)
* [Direct Offset](#direct_offset)
  

# XCHG <a name="xchg"></a>

```XCHG``` will exchange the contents of the two operands.

```assembly
XCHG reg, reg
XCHG reg, mem
XCHG mem, reg
```

<img src="img/xchg.png" alt="xchg" height="300" width="1900"/>

# Direct-Offset  <a name="direct_offset"></a>

A array will store only address of the first element. And we can get to others with their offset value.

``` assembly
myArray = 10, 20, 30, 40 

myArray[0] = 10
myArray[1] = 20
myArray[2] = 30
myArray[3] = 40

```

# INC and DEC
Affect all status flags except the CF flag

# ADD and SUB affect all status flags

# NEG (negate) Instruction

Reverses the sign of an operand. Operand can be a register or a memory operand.

* Zero flag – set when destination equals zero
* Sign flag – set when destination is negative
* Carry flag – set when unsigned value is out of range (unsigned overflow)
* Overflow flag – set when signed value is out of range (signed overflow)


# Carry Flag

The Carry flag is set when the result of an operation generates an unsigned value that is out of range (too big ot too small for the destination operand)

# Overflow Flag (OF)

The Overflow flag is set when the signed result of an operation is invalid or out of range.

## A Rule of Thumb

When adding two integers, remember that the Overflow flag (OF) is only set when . . .
1. Two positive operands are added and their sum is negative 
2. Two negative operands are added and their sum is positive

* Then we have signed overflow

## Overflow Flag and Carry Flag

How the add instruction affects OF and CF
Cf = (carry out of the MSB)
OF = CF XOR MSB


How the SUB instruction affects OF and CF
Cf = INVERT (carry out of the MSB)
Negate the source and ADD it to the destination
OF = CF XOR MSB









# Syntax

* [Wine](#xchg)
# Install Wine <a name="wine"></a>