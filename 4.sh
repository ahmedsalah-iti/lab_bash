#!/usr/bin/bash
#mybackup
dir='/home/as/Desktop/shellLabs/labs/testfolder/'
backupdir="$dir/bkup"
mkdir -p $backupdir
for i in `ls $dir`
do
    if [ -f $dir/$i ]
    then
        cp $dir/$i $backupdir/$i
        echo "$i is coppied successfuly."
    fi
done
