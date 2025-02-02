#!/bin/bash

echo "Enter today:"
read DAY

if [ $DAY -eq "sunday" ]
then
    echo "Today is holiday"
else
    echo "Today is not a holiday. you have to goto school"
fi        