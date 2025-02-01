#!/bin/bash

dnf list installed mysql

if [ $? -ne 0 ]
then
    dnf install mysql -y

    if [ $? -ne 0 ]
    then
        echo "Installing MYSQL....FAILURE"
        exit 1
    else
        echo "Installing MYSQL....SUCCESS"
    fi 
else
    echo "MYSQL is already....INSTALLED"
fi                  
