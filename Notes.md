# Notes
# Table of Contents

  - Instructions
  - [XCHG](#xchg)
  - [Direct Offset](#direct_offset)
  

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


# OFFSET Operator

OFFSET returns the distance in bytes, of a label from the beginning of its enclosing (code, data, stack,..) segment

* Protected Mode: 32 bits virtual address
* Real mode: 16 bits virtual address

OFFSET returns the address of the variable.

# PTR OPerator
PTR can also be used to combine elements of a smaller data type and move them into a larger operand. The CPU will automatically reverse the bytes.

# TYPE Operator

The TYPE operator returns the size, in bytes, of a single element of a data declaration.

# Procedures

Code is placed at lowest available address followed by data.

The STACK is used for procedure calls and returns

LIFO - Last In First Out

The Stack is fixed when the program is loaded in the main memory.
  - The Stack cannot be changed at run time.
  - There is always a risk of overflow at run time.


RUNTIME STACK
  - managed by CPU using
    1. SS (Stack Segment)
    2. ESP (Stack Pointer)


ESP is modified by instructions as CALL, RET, PUSH and POP

ESP always points to the last value to be added to the top of the stack.
or
ESP is always pointing to the Top of the stack. And Stack is upside down.


```push source  ```

The source operand must be 16-bit or 32-bit in size.









# Syntax

* [Wine](#xchg)
# Install Wine <a name="wine"></a>