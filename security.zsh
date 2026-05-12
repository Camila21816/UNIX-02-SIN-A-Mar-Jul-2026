umask #the person responsible for setting the default permissions for files and folders
touch archivo1
mkdir directorio1
ls -l
umask 027
touch arcgivo2
mkdir directorio2
ls -l
#solution
 apt-get update
 apt-get install acl
 chown -R $(whoami) .
setfacl -bnR .
#They solve ownership and extended permissions problems

umask 077 #This sets a "mask" that removes all permissions for the group and other users. Anything you create from this point forward will be private. Use this when handling sensitive information.
touch secreto.txt #Create an empty file called secret.txt.
mkdir privado #Create a directory called "private". Only I can access the folder, list its files, or create things within it. For all other users, the folder is "locked".
ls -l #It is used to list the files and verify that the permissions were applied correctly.

#create a file as a normal user
whoami #This command prints the name of the user you are currently working as. "root"
echo "Hola" > mi_archivo #Create a new text file with "hello"
ls -l mi_archivo #It displays detailed information about the newly created file.
#chown #Changing the owner of "my_file": operation not allowed, But it works now because we're rooted.
useradd -m -s /usr/bin/zsh luna #Create the user named luna. It automatically creates the user's home directory, usually in /home/luna.
chown luna mi_archivo #This command changes the owner of the previous file.
#If we are not logged in as root, we must use sudo

groups #This command shows which groups the current user belongs to.
groupadd grupo_test #Create a new group in the system called group_test.
touch comun #You create a file called common and check its details. 
 ls -l comun #You check their details.
 cat /etc/group #This command prints the contents of the configuration file where all system groups are stored.

 usermod -a -G grupo_test luna #It is used for advanced identity management in Linux, allowing the user luna to be integrated into the group_test team. The -G option designates the latter as a supplementary group, while the -a parameter is essential for a secure addition, as it appends the new group to the user's profile without removing them from their previous affiliations.
 chgrp grupo_test comun #This command changes the "family" (group) to which the file belongs. group_test: The new owning group. common: The affected file.
 ls -l comun
 