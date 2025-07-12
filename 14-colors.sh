#!/bin/bash

Userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$script_name-$timestamp.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

validate(){
    if [ $1 -ne 0 ]
    then
        echo -e "$R $2..failed $N"
        exit 1
    else
         echo -e "$G $2..success $N"
    fi         
}

if [ $Userid -ne 0 ]
then
    echo -e "$R please run the use with root access $N"
    exit 1
else
    echo -e "$G your super user $N"
fi

dnf install mysql -y >>$logfile
validate $? "installing mysql"

dnf install git -y >>$logfile
validate $? "installing git"

dnf install dockerr -y >>$logfile
validate $? "installing docker"