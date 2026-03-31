#!/bin/bash
read -p "enter the username" username
read -p "enter the password" password
sudo useradd -m -p "$password" "$username"
echo "user created successfully"

