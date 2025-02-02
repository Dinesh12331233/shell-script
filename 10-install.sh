#!/bin/bash

date

if [ $? -eq 0 ]
then 
    echo "previous command is SUCCESS"
else
    echo "previous command is FAILURE"
fi 
        