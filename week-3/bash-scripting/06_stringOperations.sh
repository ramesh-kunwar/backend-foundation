#!/bin/bash

horizontalLine="-----------------------------------------------------------------------------"

echo "STRING OPERATIONS"
echo $horizontalLine


# echo "hello world" > example.txt # write hello world to example.txt

# stream editor 
# in this example we are replacing world with backend in example.txt file
# sed replaces line by line
sed -i '' 's/world/backend/' example.txt # -i means inplace doesn't create new file
# sed -i '' 's/world/backend/g' example.txt # g means all the occurance