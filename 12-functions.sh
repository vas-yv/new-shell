#!/bin/bash

Userid=$(id -u)

validate(){
    if [ $1 -ne 0 ]
    then
        echo "$2..failure"
        exit 1
    else
        echo "$2..success"
    fi        

}

if [ $Userid -ne 0 ]
then
    echo "please run the script with root access"
    exit 1
else
    echo "you are super user"
fi

dnf install mysql -y
validate $? "installing mysql"

dnf install git -y
validate $? "installing git"

