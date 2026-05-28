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

#create a file inside the subshell
touch ~/dentro_de_newgrp.txt
ls -ls ~/dentro_de_newgrp.txt
#the group is now "developers"
#create a directory
mkdir -p ~/proyecto_dev/src
ls -la ~/

#project_dev/ has a "developers" group
#exit the newgrp subshell
exit
id -gn
echo "Grupo restaurado: $/id -gn)"

#compare 2 files
ls -la ~/antes_de_newgrp.txt ~/dentro_de_newgrp.txt
#create a password-protected file
sudo groupadd grupo_restringido 
sudo gpasswd grupo_restringido
#The system will ask for a password for the group