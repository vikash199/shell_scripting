#!/bin/bash
function magicChange() {
    local C=30 #fixed the issue by declaring C as local variable
    echo "Hurray! I changed C value, the main block dont know this"
}

B=20
C=2
magicChange
MUL=$[B*C]
echo "MUL: $MUL" 