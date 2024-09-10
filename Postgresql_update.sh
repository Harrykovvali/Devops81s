CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo -e "$R Please run this script with root priveleges $N" | tee -a $LOG_FILE
        exit 1
    fi
}
CHECK_ROOT
Version=$(systemctl status postgresql-16)

#check if postgresql-16 is already installed 

if [ $? -eq 0 ]
then
    echo "Postgresql-16 is already installed"
    exit 1
else
    echo "proceeding with upgrade to Postgresql-16"

fi
sudo su - postgres
