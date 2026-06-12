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

echo "What is your first name?" #Print the question on the screen to indicate to the user what information to enter
read -r firstname #The script pauses and waits for the user to type their name and press Enter. Whatever they type is automatically saved in a variable called firstname. The -r parameter ensures that if the user types backslashes (\), they are read as literal text and do not cause formatting errors.
read -r lastname  #Display the second question on the terminal to ask for the user's last name.
echo "Your first name is ${firstname} and your last name is ${lastname}" #Finally, the script retrieves the data stored within the variables ${firstname} and ${lastname} and prints them together in a single message to show the user the complete result of what they entered.