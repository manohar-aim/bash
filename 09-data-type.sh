#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    
    echo "Error:: please run this script with root previlage"

    exit 1
fi

VALIDATE(){
    
    if [ $1 -ne 0 ]; then

        echo "error::Installing $2 is failure"
        exit 1  

    else
        echo "installing $2 is success"  
    fi
}

dnf install mysql -y
VALIDATE $? "mysql"

fi
