#!/bin/bash

Userid=$(id -u)

if [ $Userid -ne 0 ]
then
    echo "please run the user with root access"
else
     echo "you are super user"
fi
