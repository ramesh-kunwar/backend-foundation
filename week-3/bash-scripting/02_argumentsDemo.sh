#!/bin/bash


horizontalLine="-----------------------------------------------------------------------------"

echo "Arguments Demo"

echo "Param 1 = $0"
echo "Param 2= $1"

echo $horizontalLine

# named arguments

while getopts ":u:p:" opt; do
    case $opt in 
        u) username="$OPTARG";;
        p) password="$OPTARG";;
        \?) echo "Invalid option"

    esac
done


echo "Username : $username"
echo "Password : $password"

    