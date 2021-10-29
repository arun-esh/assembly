#!/bin/bash

echo -n "File name required: "
read NAME

cp ./src/source.asm ./$NAME.asm

vim ./$NAME.asm


git pull
git add /vagrant/assembly
echo "Commit: "
read commit
git commit -m "$commit"
git push

# vim ./src/$NAME.asm

cp ./$NAME.asm lib 
cd lib 
wine aml.exe /c /Zd /coff $NAME.asm 
wine alink.exe /SUBSYSTEM:CONSOLE $NAME.obj 
wine $NAME.exe 
rm $NAME.exe 
rm $NAME.obj 
rm $NAME.asm 
cd ..
