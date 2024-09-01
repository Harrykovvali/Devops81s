VALIDATE(){
    if [ $1 -ne 0 ]
    echo $1
    echo $2 
    then
        echo -e "$2 is...$R FAILED $N"  | tee -a $LOG_FILE
        exit 1
    else
        echo -e "$2 is... $G SUCCESS $N" | tee -a $LOG_FILE
    fi
}
VALIDATE $? 