#!/bin/bash
# Assign the first positional argument passed to the script ($1) to the variable IP_ADDRESS
IP_ADDRESS="${1}"
# Evaluate the value of IP_ADDRESS using a case statement to match specific patterns
case ${IP_ADDRESS} in
# Check if the IP address starts with "192.168." followed by any characters 
192.168.*)
# Print a message indicating the address belongs to the 192.168.x.x network range
echo "Network is 192.168.x.x"
# Double semicolons act as a break statement, ending this specific pattern block
;;
# Check if the IP address starts with "10.0." followed by any characters
10.0.*)
# Print a message indicating the address belongs to the 10.0.x.x network range
echo "Network is 10.0.x.x"
# End this pattern block and prevent falling through to the next options
;;
# The asterisk (*) acts as the default or catch-all pattern if no previous conditions matched
*)
# Print a message stating that the network range could not be recognized
echo "Could not identify the network"
# End the default pattern block
;;
# Close the case statement 
esac

#tested ip
#192.168.hola 
#10.0.queso