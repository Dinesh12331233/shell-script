#!/bin/bash 

#check the user is root-user or normal-user

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "you are normal-user. you cannot install"
    exit 1
else 
    echo "you are root-user.you can proceed further"
fi 

dnf install mysqll -y

#write an exit status for this command

if [ $? -ne 0 ]
then 
    echo "Installing mysql....FAILURE"
    exit 1
else 
    echo "Installing mysql....SUCCESS"
fi 

dnf install gitt -y

#write an exit status for this command

if [ $? -ne 0 ]
then 
    echo "Installing git....FAILURE"
    exit 1
else 
    echo "Installing git....SUCCESS"
fi        