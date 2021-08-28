#!/bin/bash
function add() {
    A=$1
    B=$2
    SUM=$[A+B]
    echo "SUM of $A, $B is : $SUM"
}
#main block
echo "main block begins"
add 10 20
echo "another 2 numbers"
add 30 50