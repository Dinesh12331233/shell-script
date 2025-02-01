#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "you are not root user.you cannot install"
    exit 1
fi 

dnf list installed git

if [ $? -ne 0 ]
then 
    dnf install git -y

    if [ $? -ne 0 ]
    then 
        echo "Installation is....FAILURE"
        exit 1
    else 
        echo "Installation is....SUCCESS"
    fi         

else 
    echo "git is already....INSTALLED"
fi         