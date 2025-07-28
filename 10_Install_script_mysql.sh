#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script" # here :: is used to separate the error message from the command
    exit 1 # Here in place of 1 we can provide any value other than 0
fi

dnf list installed mysql
if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Installing MySQL ... FAILURE"
        exit 1
    else
        echo "Installing MySQL ... SUCCESS"
    fi
else
    echo "MySQL is already ... INSTALLED"
fi

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Installing Git ... FAILURE"
        exit 1
    else
        echo "Installing Git ... SUCCESS"
    fi
else
    echo "Git is already ... INSTALLED"
fi


# sudo sh 10_Install_script_mysql.sh -->use this command to run the script with sudo privileges