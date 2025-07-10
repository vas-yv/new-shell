#!/bin/bash

Userid=$(id -u)

validate() {
    echo "exit status: $1"
    echo "what are you doing: $2"

}

if [ $Userid -ne 0 ]
then
    echo "please run the script with root access"
    exit 1
else
    echo "your super user"
fi

dnf install mysql -y
validate $? "installing mysql"

dnf install git -y
validate $? "installing git"
