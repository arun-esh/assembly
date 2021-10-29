<img src="img/assembly.png" alt="drawing" height="300" width="1900"/>



# Table of Contents

* Instructions

  * [MOV](#mov)

  

* [How to get listing file (Visual Studio)](#How_to_get_listing_file)
  
  * [Sample Listing File](#sample_Listing_File)



# MOV <a name="mov"></a>

:heavy_check_mark: This instruction copies the source operand to destination operand, leaving source operand unchanged.

```mov destination, source```

:heavy_check_mark: Both Operands must be of same size.

:x: Both operands cannot be memory operand.

:x: CS, EIP, and IP cannot be destination operands.

:x: an immediate value cannot be moved to a segment register.



To move data from memory to another memory location, move source memory operand's value to register and then copy value from register to destination operand.



## [How to get listing file (Visual Studio)](<a name="How_to_get_listing_file"></a>)

![image1](img/1_listing_file.png)

![image1](img/3_listing_file.png)

![image1](img/4_listing_file.png)

## [Sample Listing File]<a name="sample_Listing_File"></a>

Here is the sample Listing file: [Sample Listing file](/docs/default/irvine.lst)



​	
