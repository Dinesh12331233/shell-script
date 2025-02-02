#!/bin/bash

#check the user is root-user or normal-user

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "you are normal-user. you cannot install. so please exit here."
    exit 1
else 
    echo "you are root-user. you can proceed further."
fi 

#checking mysql is already installed or not

dnf list installed mysql

if [ $? -ne 0 ]
then 
    dnf install mysql -y

    #writing exit status for this command

    if [ $? -ne 0 ]
    then 
        echo "Installing MYSQL is....FAILURE"
        exit 1
    else 
        echo "Installing MYSQL is....SUCCESS"
    fi        
else 
    echo "mysql is already....INSTALLED"
fi        

#checking git is already installed or not

dnf list installed git

if [ $? -ne 0 ]
then 
    dnf install git -y

    #writing exit status for this command

    if [ $? -ne 0 ]
    then 
        echo "Git installation is....FAILURE"
        exit 1
    else 
        echo "Git installation is....SUCCESS"    
else 
    echo "git is already....INSTALLED"
fi         