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
ls -lai #list files and folders, inode and permits
man ls #open the official user manual
ls --all #Show all files in a directory(ls -a)
. #current directory
.. #hard links, parent of current directory
1572909 drwxrwxrwx+ 2 codespace codespace 4096 Apr  9 12:45 .
1572874 drwxrwxrwx+ 5 codespace root      4096 Apr  9 12:45 ..
#Technical details of your current location: the first number is the inode (unique file ID), followed by the read, write, and execute permissions (drwxrwxrwx), where the dot (.) represents your current folder and the dot (..) the top-level folder (the parent directory). They also indicate that the user codespace is the owner, the size is 4096 bytes, and the last modification date was today, allowing you to identify exactly who has access and how the file system is structured.
