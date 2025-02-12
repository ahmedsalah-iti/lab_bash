#!/usr/bin/bash
read -p "please write the char:    " char
case $char in 
    [A-Z])
        echo "$char is uppercase"
    ;;
    [a-z])
        echo "$char is lowercase"
    ;;
    [0-9])
        echo "$char is number"
    ;;
    *)
        echo "nothing"
esac
