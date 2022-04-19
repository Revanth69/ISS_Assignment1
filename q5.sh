#!/bin/bash

read input

reverse=$(echo $input | rev)
echo $reverse

changed=$(echo $reverse | tr a-y b-z | tr z a | tr A-Y B-Z | tr Z A)
echo $changed

length=${#reverse}

for((i=(($length/2)-1);i>=0;i--))
do
    half=$half${input:$i:1}
done
for((i=(($length/2));i<$length;i++))
do
    half=$half${input:$i:1}
done
echo $half