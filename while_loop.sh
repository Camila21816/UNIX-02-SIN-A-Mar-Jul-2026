#!/bin/bash
SIGNAL_TO_STOP_FILE="stoploop" # This is the file that will signal the loop to stop
while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do # Loop until the file exists
echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..." # Print a message indicating the file does not exist
echo "Checking again in 2 seconds..." # Print a message indicating that the script will check again in 2 seconds
sleep 2 # Wait for 2 seconds before checking again
done # Once the file exists, exit the loop
echo "File was found! Exiting..." # Print a message indicating that the file was found and the loop is exiting

