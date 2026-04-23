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
echo '#!/bin/sh > hola.sh #Create a file called hola.sh and write #!/bin/sh on its first line.
echo 'echo "Hola desde mi primer script"' >> hola.sh #Add a second line to the file with the command echo "Hello from my first script".
cat hola.sh #Display the file contents on the screen so you can verify that everything is okay.
./hola.sh #Try running the script you just created.
ls -l hola.sh #Displays file details in long list format. Use it to see who has read (r), write (w), and execute (x) permissions.
chmod +x hola.sh #This is the key command. `chmod` (change mode) and `+x` add execute permissions. Now the system knows that this file isn't just text, but a program it can run.
ls -l hola.sh #Run it again to verify the change. You will now see an "x" in the permissions.
./hola.sh #Now that it has permission, this command finally runs the script and you will see the message: "Hello from my first script" on the screen.
ls /etc #List the contents of the /etc directory. It is the sacred folder of Linux where almost all the system configuration files and installed programs are stored.
touch /etc/prueba.txt #Try creating an empty file called test.txt inside that folder.
mkdir ~/mi_carpeta #Create a new directory called my_folder in Home. The tilde symbol (~) is a shortcut for /home/your_username.
apt install cowsay #This is the command to install a program from official repositories
#You can use `touch /etc/prueba.txt` if you need `sudo`, because the `/etc` directory contains system-wide configuration files. For security reasons, Linux prohibits regular users from creating or modifying files there. Without `sudo`, you will receive a "Permission denied" error.
#Use `apt install cowsay` if you need `sudo` because installing programs changes system binaries and affects all users. Only the administrator has permission to manage installed software.
r=4
w=2
x=1
rwx=7 #all permissions
rw = 6 #read and write but not execute
r-x=5 #read and execute but not write
r-- = 4 #just read
-0 #no permission