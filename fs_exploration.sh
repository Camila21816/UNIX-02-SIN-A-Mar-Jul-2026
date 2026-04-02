cd / #We move to the root directory
ls -F #It is used to list the contents of the current directory
#FHS estructura de archivos derivada de linux (/bin,/etc,/proc)
#primera fase carga del FW, bootlader, kernel
sudo apt update #update url list
sudo apt upgrade #Install the latest versions of the libraries
sudo apt install parted #install the software
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n" #A technical report of all your storage hardware and software in a single block of text
sudo parted -l #physical discs that are available