#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "user is not root-user. hence we cannot install mysql"
    exit 1
fi

dnf install mysqll -y
