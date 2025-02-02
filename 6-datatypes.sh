#!/bin/bash

SUM=$(($1+$2+$3+$4))

TIMESTAMP=$(date)

echo "Sum of $1,$2,$3 and $4 is $SUM"

echo "script is executed at:$TIMESTAMP"

