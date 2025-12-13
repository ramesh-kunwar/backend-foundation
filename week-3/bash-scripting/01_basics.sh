#!/bin/bash

echo "Welcome to backend foundation"

# Variables
name="Ramesh"
subject='NodeJS'


echo "Welcome $name to $subject course"


# NOTE: user lowercase for variable name, use UPPERCASE for env variables


# if else
name="Ram"

if [ "$name" == "Ram"  ] ; then
    echo "You are Ram"
else
    echo "You are not Ram"
fi


# for loops

for num in 1 2 3 4 5; do 
    echo $num
    # sleep 0.5
done


# loop
echo "*******************************************************************"

# for num in {1..100}; do
#     echo $num
# done


# List / Array
languages=("JS" "C++" "golan", "Java")
# for item in "${languages[@]}"; do
#     echo $item
# done

# printing using index
for((i = 0; i<"${#languages[@]}"; i++)); do
    echo "${languages[i]}"
done