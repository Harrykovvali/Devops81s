USERID=$(id -u)
#echo $USERID

CHECK_ROOT(){
{
	if [ $USERID -ne 0 ]
	then
	     echo " Please run command under root privs"
	fi

}
CHECK_ROOT
