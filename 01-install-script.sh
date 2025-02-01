#!/bin/bash

dnf install gitt -y

if [ $? -ne 0 ]
then
    echo "Installing git....FAILURE"
    exit 1
else
    echo "Installing git....SUCCESS"
fi         