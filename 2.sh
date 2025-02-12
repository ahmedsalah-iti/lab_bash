#!/usr/bin/bash

read -p "write string: " str
case $str in
    +([A-Z]))
        echo "$str is uppercase string"
    ;;
    +([a-z]))
        echo "$str is lowercase string"
    ;;
    +([0-9]))
        echo "$str is numbers"
    ;;
    +([A-z0-9]))
        echo "$str is mix"
    ;;
    *)
        echo "nothing"
esac