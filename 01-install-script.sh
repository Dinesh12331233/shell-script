#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "you are not root user. you cannot install"
    exit 1
fi 
 
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
    echo "mysql is already....INSTALLED"
fi         