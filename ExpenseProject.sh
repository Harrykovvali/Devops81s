USERID=$(id -u)
#echo $USERID
R="\u001b[31m"
G="\u001b[32m"
Y="\u001b[33m"
N="\u001b[0m"

LOGS_FOLDER="/var/log/shell-script"
mkdir -p $LOGS_FOLDER
SCRIPT_NAME=$(echo $0|cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"

CHECK_ROOT()
{
	if [ $USERID -ne 0 ]
	then
	     echo -e " $R Please run command under root privs $N " | tee -a $LOG_FILE
	fi

}
CHECK_ROOT

