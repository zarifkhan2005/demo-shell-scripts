#!/bin/bash

balance=50000

function cb {
    echo "Your current balance is $balance"
}

function deposit {
    read -p "Enter amount to deposit: " amount
    if [ "$amount" -gt 0 ]; then
        balance=$((balance + amount))
        echo "$amount deposited successfully"
    else
        echo "Invalid amount"
    fi
}

function withdraw {
    read -p "Enter amount to withdraw: " amount
    if [ "$amount" -gt 0 ] && [ "$amount" -le "$balance" ]; then
        balance=$((balance - amount))
        echo "$amount withdrawn successfully"
    else
        echo "Insufficient balance or invalid amount"
    fi
}

function main {

    pin=7757
    read -p "Enter the PIN: " enteredpin

    if [ "$enteredpin" -eq "$pin" ]; then

        while true
        do
            echo "----------------------"
            echo "1. Check Balance"
            echo "2. Deposit"
            echo "3. Withdraw"
            echo "4. Exit"
            echo "----------------------"

            read -p "Enter your choice: " choice

            if [ "$choice" -eq 1 ]; then
                cb
            elif [ "$choice" -eq 2 ]; then
                deposit
            elif [ "$choice" -eq 3 ]; then
                withdraw
            elif [ "$choice" -eq 4 ]; then
                echo "Thank you!"
                break
            else
                echo "Invalid choice"
            fi
        done

    else
        echo "PIN is incorrect"
    fi
}

main
