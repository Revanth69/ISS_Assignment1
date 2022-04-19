#!/bin/bash
read input
wc -c $input | awk '{print "bytes = "$1}'
wc -l $input | awk '{print "libes = "$1}'
wc -w $input | awk '{print "words = "$1}'

i=0
while read sentence 
do
((i++))
number=$(echo "$sentence" | wc -w)
echo "Line No: <$i> - Count of Words: [$number]"
done < $input

cat $input | tr [:space:] '\n' | tr [',','.',':','?','~','!','(',')'] '\n' | sort | uniq -c -d | awk '{print "Word: " $2 " - Count of repetition: " $1}'