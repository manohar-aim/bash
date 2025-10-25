#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "ERROR::please run the script with root previlage"
fi

VALIDATE(){
    if ($1 -ne 0);then
        echo "removing $2 is failed"
    else
        echo "removing $2 is Success"
    fi
}

dnf remove python3 -y
VALIDATE $? "Python3"



