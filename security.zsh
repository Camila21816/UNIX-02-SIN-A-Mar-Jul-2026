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
