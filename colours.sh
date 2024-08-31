#!/bin/bash



USERID=$(id -u)
R="\u001b[31m"
G="\u001b[32m"
Y="\u001b[33m"

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo "Please run this script with root priveleges"
        exit 1
    fi
}

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is...$R FAILED $N"
        exit 1
    else
        echo -e "$2 is...$G SUCCESS $N"
    fi
}

CHECK_ROOT




dnf list installed mysql

if [ $? -ne 0 ]
then
    echo -e  "$Y MySQL is not installed...going to install $N"
    dnf install mysql -y
    VALIDATE $? "Installing MySQL"
else
    echo -e  " $R MySQL is already installed..nothing to do $N"
fi