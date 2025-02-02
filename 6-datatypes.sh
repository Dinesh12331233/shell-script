#!/bin/bash

SUM=$(($1+$2))

TIMESTAMP=$(date)

echo "Sum of $1 and $2 is $SUM"

echo "Script executed at:$TIMESTAMP"
