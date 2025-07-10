#!/bin/bash

Userid=$(id -u)

if [ $Userid -ne 0 ]
then
    echo "please run the script root access"
else
    echo "your super user"
fi

dnf install mysql -y