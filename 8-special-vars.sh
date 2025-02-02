#!/bin/bash

echo "all variables passed:$@"
echo "Total number of variables passed:$#"
echo "script name:$0"
echo "present working directory:$PWD"
echo "Home directory of current user:$HOME"
echo "Which user is running the script:$USER"
echo "process id of current script:$$"

sleep 60 &
echo "process id of last command in background:$!"