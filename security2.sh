id #see the current group
id -gn #only the name of the main group
#create a file and see which group inherits
touch ~/test_group_heredado.txt
ls -ls ~/test_group_heredado.txt 
#the group is the user's primary group

