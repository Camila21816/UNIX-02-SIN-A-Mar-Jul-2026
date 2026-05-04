ls #List information about files in the current directory
ls Documents #List files inside the Documents directory
aptitude moo #List files with detailed information (long format)
ls -l #List files in reverse order
ls -r #The -r flag stands for "reverse". By default, the ls command sorts files and folders alphabetically (from A to Z). Adding -r reverses that order so they are displayed from Z to A.
#other options
ls -l -r
ls -rl
ls -lr
#These commands allow you to flexibly view directory contents according to your needs. While `ls` provides a simple view of the files, adding the `-l` flag (long format) displays detailed technical information such as permissions, owners, and sizes. The `-r` option reverses the alphabetical order of the results. The power of these commands lies in their ability to group options, allowing `ls -l -r`, `ls -rl`, and `ls -lr` to function identically, facilitating faster and more customized navigation in the terminal.
aptitude -v moo 
aptitude -vv moo
aptitude -v -v moo
#The commands `aptitude -v moo`, `aptitude -vv moo`, and `aptitude -v -v moo` are used to modify the verbosity level (the level of detail in the output) of a hidden program function. The `-v` parameter increases the level of information the command attempts to provide to the user. Adding more `v` letters or repeating the parameter separately scales the system's response, triggering a series of programmed interactions that vary depending on the complexity of the query.
pwd #Print the current working directory
cd Documents #Change directory to Documents
cd / #Go to the root directory
cd /home/sysadmin #Change the current working directory to the home folder of the user "sysadmin".
