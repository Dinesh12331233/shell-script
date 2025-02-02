#!/bin/bash

ls -la

if [ $? -eq 0 ]
then
    echo "previous command is SUCCESS"
else 
    echo "previous command is FAILURE"
fi 
        