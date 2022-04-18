#!/bin/bash
read string
echo "The reversed string is: " 
echo $string | rev
echo "The replaced string is: "
echo $string | rev | tr "a-z" "b-za" | tr "A-Z" "B-ZA"
string1=${string:0:${#string}/2}
string2=${string:${#string}/2}
echo "The string with half of it reversed is: "
string3=$(echo $string1 | rev)   
string4=$string3$string2
echo $string4
