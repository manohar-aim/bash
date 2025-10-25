#!/bin/bash

USERID= $(id -u)

if [ $USERID -ne 0 ]; then
    
    echo "Error:: please run this script with root previlage"

    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then

    echo "error::Installing mysql is failure"

else
    echo "installing mysql is success"

fi
