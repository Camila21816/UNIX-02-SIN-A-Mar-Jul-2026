#!/bin/bash
# Save the two positional parameters into clear variables
FIRST_NAME=$1
LAST_NAME=$2

# Validation: Check if the user entered both inputs
if [ -z "$FIRST_NAME" ] || [ -z "$LAST_NAME" ]; then 
    # The -z operator detects if strings are empty. If any data is missing, it stops the flow.
    echo "Error: Please provide both your first name and last name as arguments." 
    
    # $0 dynamically invokes the current file name to show the usage guide.
    echo "Usage: $0 <FirstName> <LastName>" 
    
    # Terminate the script, returning an error status (1) to the system.
    exit 1 
fi # Closing tag for the conditional structure.

# Fetch current timestamp with custom format and generate the initial file
# The +%d-%m-%Y modifier structures time as Day-Month-Year. The > symbol overwrites the file.
date +"%d-%m-%Y" > output.txt 

# Append personal data to the end of the text file without erasing previous content
echo "$FIRST_NAME $LAST_NAME" >> output.txt

# Duplicate the generated file to save a secure backup copy
cp output.txt backup.txt

# Display the data stored inside the document directly to the terminal
cat output.txt