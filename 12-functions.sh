#!/bin/bash

Userid=$(id -u)

validate(){
    if [ $1 -ne 0 ]
    then
        echo "$2..failed"
        exit 1
    else
        echo "$2..success"    

}

if [ $Userid -ne 0 ]
then
    echo "please run the user with root access"
    exit 1
else
    echo "you are super user"
fi

dnf install mysql -y
validate $? "installing mysql"

dnf install git -y
validate $? "installing git"