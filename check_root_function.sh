#!/bin/bash

# Define a routing function to determine current administrative status
check_if_root(){ 
    # Evaluate if the effective user identifier corresponds to the system superuser (root)
    if [[ "${EUID}" -eq "0" ]]; then
        # Terminate function with a successful status code to confirm administrative privileges
        return 0 
    else
        # Terminate function with a failure status code if the entity is a standard user
        return 1 
    fi
} # End of the function scope definition

# Execute the privilege verification subroutine within a conditional structure
if check_if_root; then 
    # Display confirmation statement when the execution flow returns a success code
    echo "You are root!" 
else
    # Display fallback notification when the execution flow returns a restriction code
    echo "You are not root!" 
fi

# UID (Real User Identifier): Represents the permanent account profile that iginally initialized the current operating system session. It establishes 
# the absolute ownership of the execution processes.

#EUID (Effective User Identifier): Represents the dynamic identity evaluated by the kernel in real-time to determine security access controls. While it 
#frequently matches the UID, the EUID shifts when executing processes with elevated privileges (e.g., setuid mechanisms), granting temporary access.