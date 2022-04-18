#!/bin/bash
read string 
IFS=','
read -ra array <<< "$string"
num=$((${#array[@]}-1))
sort()
{
i=0
swap_count=0
while [ $i -lt $num ]
do
if [[ ${array[$i]} -gt ${array[$i+1]} ]]
then
temp=${array[i+1]}
array[i+1]=${array[i]}
array[i]=$temp
swap_count=1
fi
i=$(($i+1))
done
if [[ $swap_count -gt 0 ]]
then
num=$(($num-1))
sort
fi
}
sort
echo ${array[*]}
