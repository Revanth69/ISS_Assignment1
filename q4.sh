#!/bin/bash
read question
array=($(echo $question | tr ',' ' '))

number=${#array[*]}


for((j=0;j<$number-1;j++))
do
        flag=0
        for((i=0;i<$number-$j-1;i++))
        do
                if [[ ${array[$i+1]} -lt ${array[$i]} ]];
                then
                        flag=1
                        temp=${array[$i]}
                        array[$i]=${array[$i+1]}
                        array[$i+1]=$temp
                        
                fi
        done

        if [[ $flag -eq 0 ]];
        then
                break
        fi
done
echo ${array[@]}