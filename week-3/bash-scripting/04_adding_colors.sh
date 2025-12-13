#!/bin/bash


horizontalLine="-----------------------------------------------------------------------------"

echo "ADDING COLORS - Ansi Colors"
GREEN='\033[0;32m'


# GREEN=\033[0;32m # capital because constant

read -p "Enter your name: " name
echo -e "${GREEN} Welcome $name"

