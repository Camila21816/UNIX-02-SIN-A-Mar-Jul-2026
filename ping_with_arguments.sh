#!/bin/bash
# This script will ping any address provided as an argument.
SCRIPT_NAME="${0}"
TARGET="${1}"
echo "Running the script ${SCRIPT_NAME}..."
echo "Pinging the target: ${TARGET}..."
ping -c 5 "${TARGET}"
echo "The arguments are: $@" #Displays all the arguments or words you typed after the script name when you run it.
echo "The total number of arguments is: $#" #Count how many arguments we passed to you in total, give the exact number.


for args in "$@"; do
echo "${args}"
done
#This new block is a loop that automatically iterates through all the parameters passed to the script when it runs. 
#Instead of processing only the first target, the command checks the entire list of arguments one by one, temporarily,
#stores the current element in an internal variable, and prints it to the screen on a separate line, repeating this cycle successively until all the entered words have been processed.