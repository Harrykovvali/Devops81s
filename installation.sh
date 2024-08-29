#!/bin/bash
userid=$(id -u)
echo $userid

if [ $userid -ne 0 ]
then
   echo " not a root user.exit"
   exit 1
fi 

dnf list installed git 
 
if [ $? -ne 0 ]
then 
      echo "git is not installed, going to install"
      
else
      echo "git is already installed,nothing to do"
fi