#!/bin/bash
# Loop through all files in the current directory that match the pattern "example_file*"
for file in example_file*; do   
# Check if the current file name is exactly equal to "example_file1"
if [[ "${file}" == "example_file1" ]]; then       
# Print a message indicating that this specific file is being skipped
echo "Skipping the first file"
# Skip the rest of the current iteration and move immediately to the next file in the loop
continue
fi   
# Generate a random integer and overwrite (or create) the current file with that number
echo "${RANDOM}" > "${file}"
# Mark the end of the for loop block
done