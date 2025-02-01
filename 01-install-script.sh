#!/bin/bash

dnf install mysqll -y

if [ $? -ne 0 ]
then
    echo "Installing MYSQL.....FAILURE"
    exit 1
else
    echo "Installing MYSQL....SUCCESS"
fi 
        