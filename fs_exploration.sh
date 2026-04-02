cd / #We move to the root directory
ls -F #It is used to list the contents of the current directory
#FHS estructura de archivos derivada de linux (/bin,/etc,/proc)
#primera fase carga del FW, bootlader, kernel
sudo apt update #update url list
sudo apt upgrade #Install the latest versions of the libraries
sudo apt install parted #install the software
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n" #A technical report of all your storage hardware and software in a single block of text
sudo parted -l #physical discs that are available
lsblk -f #List block devices. Unlike parted, which focuses on physical hardware, lsblk focuses on data volumes and how Linux is currently using them
# loop es un archivo que actua como una unidad de almacenamiento, irve cuando se trabaja con sesiones, ya que al cerrar el archivo no se pierde la informacion
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS" #Check if the directory exists in that specific path, If the directory exists (the test is true), the system prints "UEFI". This means your motherboard booted in modern mode. If the directory does not exist (the test fails), the system prints "BIOS". This indicates that you are on an older system or in compatibility mode (Legacy/CSM).
#sale BIOS porque se ejecuta en github entonces esto quiere decir que la capa de virtualización simula un arranque simple para ahorrar recursos
|| #OR It is error handling or conditional execution
&& #The logical connector "AND" Its function is to chain commands so that the second one is executed only if the first one was successful
#GRUB2 es el estandar actual que carga el kernla delinux en la memoria actual
cat /etc/default/grub #It is used to read and display the contents of a file directly in the terminal
boot/archivos #necesarios para arrancar el sistema operativo
mnt/ #montajes temporales manuales 
opt/ #programas instalados manualmente
/run #guarada informacion temporal del sistema 
#sockets del sistemas son puntos de comunicaión entre 2 programas 
#sistema de ficheros El sistema de archivos (File System) es la estructura que utiliza Linux para organizar, almacenar y gestionar los datos en el disco duro. Sin él, el disco sería solo un montón de bits sin sentido; el sistema de archivos es el que le da nombre, jerarquía y permisos a la información.
#inodo identidicador unico del archivo
echo "mi archivo" > test.txt #create the file
