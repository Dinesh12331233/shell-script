#!/bin/bash

#checking the user is root user or normal user

USERID=$(id -u)

if [ $USERID -eq 0 ]
then
    echo "you are root user. you can install"
else
    echo "you are normal user.you cannot install"
    exit 1
fi        