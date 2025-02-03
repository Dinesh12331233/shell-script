#!/bin/bash

#check the user is root-user or not. if the user is normal-user then exit from the script

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "you are normal-user. you cannot install"
    exit 1
fi 

#checking whether mysql is already installed or not 

dnf list installed mysql

if [ $? -ne 0 ]
then 
    dnf install mysql -y

    #writing an exit status for this command

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

#checking whether git is already installed or not

dnf list installed git

if [ $? -ne 0 ]
then 
    dnf install git -y

    #writing an exit status for this command

    if [ $? -ne 0 ]
    then 
        echo "Installing git....FAILURE"
        exit 1
    else 
        echo "Installing git....SUCCESS"
    fi         
else 
    echo "Git is already....INSTALLED"
fi 
