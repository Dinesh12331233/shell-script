#!/bin/bash

#checking the user is root user or normal user

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "you are normal user. you cannot install"
    exit 1
else 
    echo "you are root user. you can install"
fi              