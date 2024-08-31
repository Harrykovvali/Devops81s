USERID=$(id -u)
#echo $USERID
R="\u001b[31m"
G="\u001b[32m"
Y="\u001b[33m"
N="\u001b[0m"


CHECK_ROOT()
{
	if [ $USERID -ne 0 ]
	then
	     echo -e " $R Please run command under root privs $N"
	fi

}
CHECK_ROOT

