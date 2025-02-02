#!/bin/bash

NUM=$1

if [ $NUM -gt 100 ]
then
    echo "given number $NUM is graterthan 100"
else
    echo "given number $NUM is lessthan or equal to 100"
fi        