#!/usr/bin/bash
if [[ $# -lt 1 ]]
then
    ls
    
else
    if [[ -d $1 ]]
    then
        ls $1
        
    else
        echo "sorry $1 it's not valid dir !"
    fi
fi
