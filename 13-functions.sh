#!/bin/bash

Userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$script_name-$timestamp.log

validate(){
    if [ $1 -ne 0 ]
    then
        echo "$2..failed"
        exit 1
    else
        echo "$2..success"
    fi
}

if [ $Userid -ne 0 ]
then
    echo "please enter user with root access"
    exit 1
else
    echo "you are super user"
fi

dnf install mysql -y >>$logfile
validate $? "installing mysql"

dnf install git -y >>$logfile
validate $? "installing git"