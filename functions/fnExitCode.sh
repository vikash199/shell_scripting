#!/bin/bash

#global variable
RET_NUM_TYPE="NONE"

function findEvenorOdd() {
    local NARGS=$#
    if [ $NARGS -ne 1 ]; then
        echo "ERROR: argument is missing, so returning exitcode: 100" #debugging
        return 100
    fi
    local N=$1
    local REM=$[N%2]
    local NUMBER_TYPE="NONE"

    if [ $REM -eq 0 ]; then
        NUMBER_TYPE="EVEN"
    else
        NUMBER_TYPE="ODD"
    fi
    RET_NUM_TYPE=$NUMBER_TYPE
    return 0
}

#main block
read -p "N: " NUM
findEvenorOdd $NUM
EXITCODE=$?
if [ $EXITCODE -eq 0 ]; then
    echo "Given $NUM is $RET_NUM_TYPE number"
elif [ $EXITCODE -eq 100 ]; then
    echo "ERROR: Number to check is missing"
fi
echo "bye..."