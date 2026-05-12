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