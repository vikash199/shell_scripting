#!/bin/bash
source ./checkPrime.sh #import another shellscript file into current shellscript using source
RET_SUM_OF_PRIME_NUMBERS=0
function addPrimeNumbers() {
    local N_ARGS=$#
    local SUM=0
    if [ $N_ARGS -eq 0 ]; then
        echo "ERROR!: Array to add prime numbers is missing"
        return 100
    fi
    local NUMBERS=$@    
    for NUM in ${NUMBERS[@]}
    do
        checkPrime $NUM
        local EC=$?
        if [ $EC -eq 0 ]; then
            if [ $RET_PRIME_NUMBER -eq 1 ]; then
                SUM=$[SUM+NUM]
            fi
        fi
    done
    RET_SUM_OF_PRIME_NUMBERS=$SUM
    return 0
}

#main block
read -p "Numbers: " -a NUMBERS
addPrimeNumbers ${NUMBERS[@]}
EXITCODE=$?
if [ $EXITCODE -eq 0 ]; then
    echo "SUM OF PRIME NUMBERS : $RET_SUM_OF_PRIME_NUMBERS in the array : ${NUMBERS[@]}"
else
    echo "ERROR!: unable to add the prime numbers"
fi

