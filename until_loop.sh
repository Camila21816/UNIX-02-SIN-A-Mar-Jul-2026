#!/bin/bash
# Define a variable named FILE and assign it the string value "output1.txt"
FILE="output1.txt"
# Create an empty file named "output1.txt" 
touch "${FILE}"
# Start a loop that runs UNTIL the file exists and has a size greater than zero
until [[ -s "${FILE}" ]]; do
# Print a message stating that the file is currently empty
echo "${FILE} is empty..."
 # Inform the user that the script will verify the file size again after a short break
echo "Checking again in 2 seconds..."
# Pause the execution of the script for 2 seconds to avoid overloading the CPU
sleep 2
# Mark the end of the until loop block
done
# Print a success message once the loop breaks (meaning the file is no longer empty)
echo "${FILE} appears to have some content in it!"

#The command `echo "until_loop_will_now_stop!" > output1.txt` is executed.
#This changes the size of output1.txt from 0 to greater than zero (> 0 bytes).
#The loop 'until [[ -s ... ]]' detects the content and terminates successfully.