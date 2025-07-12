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

for i in $@
do
   echo "package to install:$i"
   dnf list installed $i >>$logfile
   if [ $? -ne 0 ]
   then
       echo -e "$G $i already installed.. $Y skipping $N"
    else
        dnf install $i -y >>$logfile
        validate $? "installation of $i"
    fi
done       