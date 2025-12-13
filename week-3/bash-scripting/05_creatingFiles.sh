#!/bin/bash

horizontalLine="-----------------------------------------------------------------------------"

echo "CREATING FILES USING BASH"
echo $horizontalLine

# creating files
echo "Welcome to backend cohort" > welcome.txt
cat welcome.txt # for seeing content of welcome.txt


# here document
#  you can write multiline content
cat > welcome2.txt << EOL # EOL means end of line
Welcome to backend cohort (welcome2.txt)

This is backend cohort
this is multi line text


EOL


#  FOLDER CREATION

mkdir hello-folder # folder named hello-folder  will be created
mkdir -p demo-folder/demo1


# creating multiple folder
mkdir -p {folder1,folder2,folder3}