#!/bin/bash
function usercreation {
read -p "enter the username" username
sudo useradd -m "$username"
}
for (( i=1 ; i<=5 ; i++ ))
do
	usercreation
done
