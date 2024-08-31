#!/bin/bash

USERID=$(id -u)

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
        echo "$2 is...FAILED"
        exit 1
    else
        echo "$2 is...SUCCESS"
    fi
}

CHECK_ROOT


for package in $@
do 
   dnf list installed $package
   if [ $? -ne 0 ]  
    then
       echo "$package is not installed, going to install it.."
       dnf install $package -y
       VALIDATE $? "Installing package"
    else
       echo "Git is already installed, nothing to do.."
   fi
done
