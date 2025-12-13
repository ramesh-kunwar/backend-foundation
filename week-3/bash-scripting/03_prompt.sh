#!/bin/bash


horizontalLine="-----------------------------------------------------------------------------"

echo "GETTING PROMPT FROM USER"

echo $horizontalLine

echo "what is your name: "
read name

# alternate way
read -p "Enter your age : " age # -p means prompt

echo "You are $name and your age is $age"

echo $horizontalLine

# For hiding what you typed like when you enter password

read -sp "Enter your password: " password
echo "Your password is $password"
