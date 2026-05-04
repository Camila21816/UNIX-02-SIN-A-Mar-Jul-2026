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
sudo chmod +x init #grants execution permissions
sudo find . | cpio -o -H newc > ../init.cpio #create the boot package
sudo su # Switch to root for the following steps (this simplifies permissions)
dd if=/dev/zero of=boot bs=1M count=50 #Create an empty 50 MB file that will serve as a virtual disk
mkfs -t fat boot #Create a FAT filesystem in that file (required by Syslinux)
syslinux boot #Install the Syslinux bootloader on the image
mkdir m #It allows you to generate multiple folders at once or nested structures using the - parameter
mount boot m #This command connects the virtual disk file (boot) to a system folder (m). `mount`: This is the command to "mount" or connect. `boot`: This is the file containing your virtual disk (previously created with `dd` and formatted). `m`: This is the mount point. From now on, anything placed in the `m` folder is actually being saved within the `boot` file.
cp bzImage init.cpio m #The function of this command is to copy the essential files so that the Linux distribution can start correctly, moving both the kernel (bzImage) and the temporary file system (initramfs.cpio.gz) to the destination m.
umount m # This command performs a safe disconnection from the mount point, breaking the link between the m folder and the disk file to ensure that all data has been written correctly.
qemu-system-x86_64 -nographic -append "console=ttyS0" -kernel bzImage -initrd init.cpio -drive file=boot,format=raw #This command is used to quickly test a custom Linux kernel.
