#The absolute path starts at the root address.
mkdir proyecto #create the project directory
cd proyecto/ #We move to the project directory
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/proyecto #I move to the project directory from the root directory
pwd #It tells me which directory I'm in.
cd ~ #It moves me to the home directory
cd /home/codespace #absolute path
echo $HOME #environment variable to tell me which directory I am in
echo $BASH #path to the bash executable
echo $PATH #Displays the folder list, reveals the priority order, and helps diagnose errors.
ls -lai #list files and folders
man ls #open the official user manual
ls --all #mostrar todos los archivos de un directorio(ls -a)
. #current directory
.. #hard links