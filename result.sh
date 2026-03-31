#!/bin/bash
read -p "Enter the marks: " marks

if [ "$marks" -ge 85 ] && [ "$marks" -le 100 ]; then
    echo "First Class Distinction"

elif [ "$marks" -ge 75 ]; then
    echo "First Class"

elif [ "$marks" -ge 65 ]; then
    echo "Second Class"

elif [ "$marks" -ge 45 ]; then
    echo "Pass"

else
    echo "Fail"
fi
