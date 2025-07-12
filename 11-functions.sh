#!/bin/bash

Userid=$(id -u)

validate(){
    echo " exit status:$1"
    echo "what you are doing:$2"

}

if [ $userid -ne 0 ]
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