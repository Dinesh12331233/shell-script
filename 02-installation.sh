#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2....FAILURE"
        exit 1
    else 
        echo "$2....SUCCESS"
    fi         
}


if [ $USERID -ne 0 ]
then 
    echo "you are not root-user.you cannot install"
    exit 1
fi 

dnf list installed mysql

if [ $? -ne 0 ]
then 
    dnf install mysql -y

    VALIDATE $? "Installing MYSQL"

else 
    echo "mysql is already....INSTALLED"
fi         

dnf list installed git 

if [ $? -ne 0 ]
then
    dnf install git -y

    VALIDATE $? "Installing Git"         

else 
    echo "Git is already....INSTALLED"
fi 
