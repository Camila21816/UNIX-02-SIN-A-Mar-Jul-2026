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
