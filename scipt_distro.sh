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
qemu-system-x86_64 -nographic -append "console=ttyS0" -kernel bzImage -initrd initramfs.cpio.gz -drive file=boot,format=raw #The previous command failed because the original command was looking for init.cpio, but the file is called initramfs.cpio.gz.
#To exit QEMU, we use ctrl+a and then x

#EXERCISES

#1. Check the firmware type 
 [ -d /sys/firmware/efi ] && echo "UEFI" ||
echo "BIOS"
 ##In the codespace, I got BIOS because it maximizes compatibility with all development tools; the environment is presented to the operating system through a Legacy BIOS interface. In QEMU, it's also BIOS because we're starting the emulator with the basic configuration that doesn't include UEFI support.

#2. Inspect the structure ls in QEMU Which directories are missing and why?
 ##missing: /etc, /home, /proc, /sys, /var, /tmp, /lib, /lib64, /opt, /mnt, /media. The absence of these directories is due to the fact that we are operating in a minimal boot environment based solely on an initramfs loaded into RAM. Unlike a full distribution installed on a hard drive, this system has a limited purpose: it is a skeletal structure designed only for the Linux kernel to initialize and execute a basic startup process.

#3. Exploring BusyBox: Within QEMU, run `ls -la /bin/` and observe that all the commands are symbolic links to the same binary. What advantage does this have for an embedded system?
 ##The advantages are: Massive savings in disk space/RAM, optimized memory management, it is much easier to compile and update a single file than to manage hundreds of small utilities.

#4. Examine blocks: In the Codespace, create a file with `echo "hello" > test.txt` and then run `stat test.txt`. Identify the actual size versus the allocated blocks. Is there internal fragmentation?
 ##Actual Size: 5 bytes. This corresponds to the word "hello" (4 letters) plus the newline character (\n) that the echo command automatically adds.
 ##Allocated Blocks: 8. In Linux systems, the blocks shown by stat are usually 512 bytes. Therefore, $8 \times 512 = 4096$ bytes physically allocated in storage.
 ##The value IO Block: 4096 is crucial. It indicates the unit size that the file system prefers for read and write operations.
 ##Yes, there is massive internal fragmentation. Internal fragmentation occurs when the space allocated to a file is greater than the space it actually needs.

#5. Analyze partitions: Run `sudo parted -l && echo -e "\n---\n" && lsblk -f` on the codespace. This identifies which disks use GPT vs. MBR, and which filesystems are in use.
 ##The primary disk (sda) uses a GPT partitioning scheme. This conclusion is drawn from the specific structure of the detected partitions: the presence of partitions sda14 and sda15 is a characteristic of the Azure and GitHub Codespaces standard for GPT disks. In this environment, partition 15 acts as the EFI system partition (ESP) for modern booting, while partition 14 is reserved for BIOS metadata compatibility. Unlike the traditional MBR scheme, which typically lists partitions in a strictly sequential and limited order (1 to 4), this technical organization confirms that the system operates under a contemporary and scalable architecture.
 ##Based on the observed mount points, it can be deduced that the system uses ext4 for the root partition (sda1), ensuring stability and efficiency in persistent storage. On the other hand, sdc1 functions as a high-performance volume dedicated to temporary files in /tmp. The loop devices act as virtual drives that mount compressed images or containers, usually in formats such as squashfs or ext4, while sr0 represents the virtual CD-ROM drive operating with the ISO9660 standard.
 ##Implementing loop devices in Codespaces allows you to isolate the Docker layers and the VS Code environment, managing them as independent units. By linking key mount points like /workspaces to these devices, you create a virtualized file system that protects the integrity of the host machine, ensuring that any modifications or errors within the container do not affect the main system.