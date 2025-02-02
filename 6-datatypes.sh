#!/bin/bash

NUM1=$1
NUM2=$2
NUM3=$3
NUM4=$4

SUM=$(($NUM1+$NUM2+$NUM3+$NUM4))

TIMESTAMP=$(date)

echo "Sum of $NUM1,$NUM2,$NUM3 and $NUM4 is $SUM"

echo "script is executed at:$TIMESTAMP"

