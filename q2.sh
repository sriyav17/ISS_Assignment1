#!/bin/bash

while IFS= read -r line
do
if [[ $line == *"~"* ]]
then 
author=${line#*~}
echo "$author once said, \"$(echo $line | cut -d "~" -f 1)\""
else
echo $line
fi
done < "$1" > speech.txt
    
