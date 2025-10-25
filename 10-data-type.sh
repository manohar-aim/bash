#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "ERROR::please run the script with root previlage"
fi

VALIDATE(){
    if [ $1 -ne 0 ];then
        echo "Installing $2 is failed"
    else
        echo "Installing $2 is Success"
    fi
}

dnf install python3 -y
VALIDATE $? "Python3"

dnf install mongodb-mongosh -y
VALIDATE $? "mongosh"



