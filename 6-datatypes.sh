#!/bin/bash

echo "please enter first number:"
read NUM1

echo "please enter second number:"
read NUM2

echo "please enter third number:"
read NUM3

SUM=$(($NUM1+$NUM2+$NUM3))

TIMESTAMP=$(date)

echo "sum of $NUM1,$NUM2 and $NUM3 is $SUM"

echo "Script executed at:$TIMESTAMP"