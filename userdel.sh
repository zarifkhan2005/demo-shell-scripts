#!/bin/bash
read -p "enter the username" username
read -p "enter the password" password
sudo useradd $username
echo "user created successfully"
sudo userdel $username
echo "useradded"
cat /etc/passwd | grep $username | wc | awk '{print $1}'
echo "if wc os 0 the user is deleted"
