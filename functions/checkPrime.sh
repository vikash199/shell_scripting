#!/bin/bash
RET_PRIME_NUMBER=0
function checkPrime() {
    local F_PRIME_NUMBER=1
    local N_ARGS=$#
    if [ $N_ARGS -ne 1 ]; then
        echo "ERROR!: Number to check for prime is missing"
        return 100
    fi
    local N=$1
    local LEN=$[N/2]
    for((I=2;I<=$LEN;I++))
    do
        local REM=$[N%I]
        if [ $REM -eq 0 ]; then
            F_PRIME_NUMBER=0
            break
        fi
    done
    RET_PRIME_NUMBER=$F_PRIME_NUMBER
    return 0   
}
