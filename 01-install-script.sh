#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]
then 
    echo "user is root user"
    dnf install mysql -y
else
    echo "To run install command user must be root-user" 
fi       