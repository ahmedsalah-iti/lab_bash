#!/usr/bin/bash
if [[ $# -lt 2 ]]
then
    echo "usage: $0 sourceFileName targetFileName"
    exit
fi
if [[ $# -eq 2 ]]
then
    if [[ -f $1 ]]
    then
        if [[ -f $2 ]]
        then
            echo "sorry there is already existed file called $2 , and override isn't allowed."
            exit
        else
            # it's dir or it's not existed file.
            cp $1 $2
            echo "coppied successfuly."
            exit
        fi
    else
        echo "$1 isn't existed file !"
        exit
    fi
fi

if [[ $# -gt 2 ]]
then
    if [[ -d ${@: -1} ]]
    then
        cp $@
    else
        echo "sorry ${@: -1} isn't a folder !"
    fi
fi