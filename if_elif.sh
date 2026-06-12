#!/bin/bash

# Capture the incoming command-line argument into a descriptive variable
USER_INPUT="${1}" 

# Verification: Halt execution if no parameter was passed by the user
if [[ -z "${USER_INPUT}" ]]; then 
    # Notify the user that a required input value is missing
    echo "You must provide an argument!" 
    
    # Return a failure exit status (1) to signal an abnormal termination
    exit 1 
fi # Terminate the initial data validation condition

# Evaluate the nature of the given input path
if [[ -f "${USER_INPUT}" ]]; then 
    # Execute this block if the path points directly to a regular file
    echo "${USER_INPUT} is a file." 
    
elif [[ -d "${USER_INPUT}" ]]; then 
    # Execute this block if the path corresponds to an existing directory
    echo "${USER_INPUT} is a directory." 
    
else 
    # Default fallback when the input doesn't match any known file system type
    echo "${USER_INPUT} is not a file or a directory." 
fi # Close the file type evaluation structure