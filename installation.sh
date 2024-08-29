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
      dnf install git -y

      if [ $? -ne 0 ]
      then 
         echo "git installation is not successful. please check"
         exit 1
      else
         echo " git installation is successful"
      fi
else
      echo "git is already installed,nothing to do"
fi
userid=$(id -u)
echo $userid

if [ $userid -ne 0 ]
then
   echo " not a root user.exit"
   exit 1
fi 

dnf list installed mysql 
 
if [ $? -ne 0 ]
then 
      echo "mysql is not installed, going to install"
      dnf install mysql -y

      if [ $? -ne 0 ]
      then 
         echo "nysql installation is not successful. please check"
         exit 1
      else
         echo " mysql installation is successful"
      fi
else
      echo "mysql is already installed,nothing to do"
fi