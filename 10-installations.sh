#!/bin/bash

Userid=$(id -u)

if [ $Userid -ne 0 ]
then
    echo "please run the script root access"
    exit 1
else
    echo "your super user"
fi

dnf install mysql -y