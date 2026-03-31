#!/bin/bash
read -p "enter the name which you want to check" username
count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count -eq 0 ]; then
	echo "user is not exist"
else
	echo "user is exist"
fi
