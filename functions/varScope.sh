#!/bin/bash
function checkVarScope() {
    echo "Hey! able to access global variable inside function A: $A"
    A=20 #we can modify global variable, and will reflect in main block
    B=50 # now B is a global variable
    echo "B in function : $B"
    local C=100 #now C is local variable and can be visible within function only
    echo "C, is local here in function: $C"
}

#main block
A=10 #global variable
#A variable,  we can access in main block also and function block also
echo "A: $A"
checkVarScope
echo "Modified A by checkVarScope function is : $A"

echo "B variable of function is global var, so able to access in main block: $B"

echo "we cannot access C local variable inside main block : $C"