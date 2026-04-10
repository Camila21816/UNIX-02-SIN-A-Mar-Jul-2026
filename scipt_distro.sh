sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86
#Install all necessary libraries
git clone --depth 1 https://github.com/torvalds/linux.git cd linux
#clone the kernel repository
cd linux #I move to the Linux folder
make menuconfig #Configure the compilation options
make -j 2 # compile the kernel with the number of available cores
sudo mkdir /boot-files # Copy the kernel image to a working directory
sudo cp arch/x86/boot/bzImage /boot-files #move the system to a folder
cd . . #It is used to move up one level in the directory hierarchy.
git clone --depth 1 https://git.busybox.net/busybox #clone a git repository
cd busybox #enter the busybox folder
sudo mkdir /boot-files/initramfs #creates a specific folder structure in the system root
sudo make CONFIG_PREFIX=/boot-files/initramfs install #Install the files that were compiled into the folder we prepared
cd /boot-files/initramfs #Enter the busybox folder where all the files were installed
sudo vi init #It creates the init file, which is the first program that the kernel executes.
#!/bin/sh
/bin/sh
#The first line tells the kernel to use the shell to interpret the file. The second line simply starts an interactive shell.
sudo rm linuxrc #This command deletes a specific file that BusyBox usually creates by default.