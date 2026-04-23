ls -a ls--all #they do the same
ls -l -a -a ls -lah #all the options together in a single command
mkdir -- -rf #create the directory -rf #todo lo que viene despuesde -- se interpreta como texto
rmdir -- -rf #remove -rf
ls --help #short help
man ls #complete help manual #to search I occupy / to go forward n and backward N
man git #Table of Contents
man git-clone #The clone command is usually your first step
--depth #Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to fetch the histories near the tips of all branches. If you want to clone submodules shallowly, also pass --shallow-submodules.
chmod #change permissions
#touch crea un archivo de texto
chmod +x script.sh #It turns the file into an executable for everyone (owner, group, and others), allowing anyone to run it as a program.
chmod u+x script.sh #Grants execution permission only to the file owner, maintaining the restriction for all other system users.
chmod o-r secreto.text #It blocks read access to external users (others), preventing people outside the owner or group from seeing the file's contents.
chmod u+rw,go-rwx privado #It establishes full access control where the owner can read and edit, while the group and others lose any right to view, touch, or execute the file.
sudo chmod +x init #Grants execute permissions to the file named init using superuser privileges. When using sudo, the system prompts you for your password to ensure you have the authority to modify protected or system files, and the +x (since there are no preceding letters) makes the file executable for all users.
#init contiene el primer proseso de ejecucion 
tee #It's a "pipe" with a standard output and a file
sudo echo "hola">/etc/archivo_protegido #no working
sudo echo "hola" | sudo tee /etc/archivo_protegido > /dev/null #This command is used to write text to a system-protected file without the terminal displaying unnecessary messages. `sudo tee` is used because it grants the process administrator privileges to save the content, while the final part (`> /dev/null`) clears the screen so you don't see repeated text while the file is being saved.
ls /etc #List the contents of the /etc directory
sudo echo "hola" | sudo tee /etc/archivo_protegido #It works but it doesn't redirect
sudo sh -c'echo "chao">>/etc/archivo_protegido' #Using `sh -c allows both the command and the writing action to be executed with root privileges. Ultimately, this appends the word "goodbye" to the end of the file without deleting what was already there.
sudo -i #It makes us the root user (superuser) and places us in the working environment.
exit #Log out of superuser session
sudo su #Root access but stay where you are currently working.
sudo su - #It serves to ensure that nothing from the normal user configuration interferes with administrative tasks.
echo "$HOME" #Expand the variable, it shows me what $HOME contains.
echo '$HOME' #prints $HOME