#!/bin/bash

read -p "Enter num1: " a
read -p "Enter num2: " b

echo "Addition: $((a + b))"
echo "Subtraction: $((a - b))"
echo "Multiplication: $((a * b))"

if [ "$b" -ne 0 ]; then
    echo "Division: $((a / b))"
else
    echo "Division: Cannot divide by zero"
fi


