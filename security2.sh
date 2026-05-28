id #see the current group
id -gn #only the name of the main group
#create a file and see which group inherits
touch ~/test_group_heredado.txt
ls -ls ~/test_group_heredado.txt 
#the group is the user's primary group

groups #View all available groups
echo "Grupo actual: $(id -gn)" #see the current group
#create a newgrp file
touch ~/antes_de_newgrp.txt 
ls -la ~/antes_de_newgrp.txt 

#Install util-linux-extra
apt update
apt upgrade
apt install -y apt-file && apt-file update
apt-file search /usr/bin/newgrp
apt install -y util-linux-extra 