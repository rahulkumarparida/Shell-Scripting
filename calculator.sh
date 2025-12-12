#!/bin/bash

set -x

# Create calculator with user interactivity

addition() {
    local a=$1
    local b=$2
    let c=$a+$b
    echo "              "
    echo "Answer is $c"
}

multiplacation() {
    local a=$1
    local b=$2
    let c=$a*$b
    echo "              "
    echo "Answer is $c"
}

division() {
    local a=$1
    local b=$2
    let c=$a/$b
    echo "              "
    echo "Answer is $c"
}

substraction() {
    local a=$1
    local b=$2
    let c=$a-$b
    echo "              "
    echo "Answer is $c"
}

modulo() {
    local a=$1
    local b=$2
    let c=$a%$b
    echo "              "
    echo "Answer is $c"
}

welcome() {
    echo "____________________________________"
    echo "                                    "
    echo "     Welcome to the Calculator      "
    echo "____________________________________"
    echo "                                    " 
}



function calculator {

welcome

read -p "Enter 2 numbers: " a b

echo "Commands: "
echo "a)addition"    
echo "b)multiplacation"    
echo "c)division"    
echo "d)substraction"  
echo "e)modulo"  
read -p "Choose a Command: " choice

case $choice in
    a) addition $a $b;;
    b) multiplacation $a $b;;
    c) division $a $b;;
    d) substraction $a $b;;
    e) modulo $a $b;;
    *) echo "Invalid Option"
esac




}

calculator