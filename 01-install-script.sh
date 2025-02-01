#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "user is not root-user. hence we cannot install mysql"
else
    echo "user is rrot-user"
    dnf install mysqll -y
fi
    