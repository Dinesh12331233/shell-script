#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"


#check the user is root-user or not. if the user is normal-user then exit from the script

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2....$R FAILURE"
        exit 1
    else 
        echo -e "$2....$G SUCCESS"
    fi
}

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
    VALIDATE $? "Installing MYSQL"             
else 
    echo -e "MYSQL is already....$Y INSTALLED" 
fi 

#checking whether git is already installed or not

dnf list installed git

if [ $? -ne 0 ]
then 
    dnf install git -y
    VALIDATE $? "Installing Git"
             
else 
    echo -e "Git is already....$Y INSTALLED"
fi 
