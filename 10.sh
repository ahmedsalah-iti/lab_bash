#!/usr/bin/bash
declare -i arrSize=0
declare -a arr=()
declare -i sum=0
read -p "[+] Write the Size of the Arr : " arrSize
echo $arrSize
if [[ $arrSize -lt 1 ]]
then
    echo "You cant write less than 1 size."
    exit
fi
for i in $(seq 1 $arrSize)
do  
    read -p "write your $i elemtn on the array ($i/$arrSize) : " arr[i-1]
    sum+=${arr[i-1]}
done

((avg=$sum/$arrSize))
echo $avg