#!/usr/bin/bash
function mysq(){
declare -i num
#read -p "enter the num" num
num=$1
if [[ $num -lt 1 ]]
then
    echo "You have to write number more than zero."
    exit
fi
(( sq=$num * $num ))
echo $sq
}
square=$(mysq "5")
echo "the square is $square"