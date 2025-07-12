#!/bin/bash

Userid=$(id -u)

if [ $Userid -ne 0 ]
then
    echo "please run the user with root access"
    exit 1
else
     echo "you are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "installation failed"
    exit 1
else
    echo "installation success"
fi

dnf install gitt -y

if [ $? -ne 0 ]
then
    echo "installation failed"
    exit 1
else
    echo "installation success"
fi