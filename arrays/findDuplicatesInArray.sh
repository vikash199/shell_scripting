#!/bin/bash
read -p "Numbers:" -a NUMBERS
declare -a D_NUMBERS
D_INDEX=0
LEN=${#NUMBERS[@]}

for((I=0;I<$LEN-1;I++))
do
    C=${NUMBERS[I]}
    for((J=$I+1;J<$LEN;J++))
    do
        if [ $C -eq ${NUMBERS[J]} ]; then
            D_NUMBERS[$D_INDEX]=$C
            D_INDEX=$[D_INDEX+1]               
        fi
    done
done
echo "original array: ${NUMBERS[@]}"
echo "duplicate elements removed: ${D_NUMBERS[@]}"