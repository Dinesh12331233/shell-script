#!/bin/bash

date

if [ $? -ne 0 ]
then 
    echo "previous command is FAILURE"
    exit 1
else 
    echo "previous command is SUCCESS"
fi         
