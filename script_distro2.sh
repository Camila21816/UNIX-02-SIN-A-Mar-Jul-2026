#Professor, here I saved what wasn't saved in the script where everything was because it said it was corrupted and I didn't want to commit Git. I told you this in class, I don't know if you remember, but I'm mentioning it because the commit will be outside the timeframe of the assignment.

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

