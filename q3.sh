#!/bin/bash
filesize=$(stat -c %s "$1")
echo "File size = $filesize"
numlines=$(wc -l < $1)
echo "Number of lines = $numlines"
numwords=$(wc -w < $1) 
echo "Number of words = $numwords"
i=1
while [ $i -le $numlines ]
do
numline=$(head -$i $1 | tail -1 | wc -w)
echo Line No: $i - Count of Words: $numline
let i=i+1
done
echo The repeated words are:
while IFS= read -r line
do
echo "Word: $(echo $line | cut -d " " -f 2) - Count of repetition: $(echo $line | cut -d " " -f 1)"
done <<< $(grep -wo "[[:alpha:]]\+" $1 | sort | uniq -cd) 
