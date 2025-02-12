#!/usr/bin/bash
#mychmod
dir='/home/as/Desktop/shellLabs/labs/testfolder/'
for i in `ls $dir`
do
    chmod u+x $dir/$i
    echo "added x perm to $i"

done
