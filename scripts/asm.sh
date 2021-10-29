#!/bin/bash

echo -n "Enter the name of the source file: "
read FILE
cp src/$FILE.asm lib 
cd lib 
wine aml.exe /c /Zd /coff $FILE.asm 
wine alink.exe /SUBSYSTEM:CONSOLE $FILE.obj 
wine $FILE.exe 
rm $FILE.exe 
rm $FILE.obj 
rm $FILE.asm 
cd ..
