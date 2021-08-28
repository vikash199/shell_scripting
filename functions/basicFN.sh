#!/bin/bash

#function block
function printFn() {
    echo "hurray! function block is executing"
}


#main block
echo "main block begin execution"
#refer the function name to execute the function
printFn 
echo "lets call the printFn function again"
printFn
echo "main block ends"
