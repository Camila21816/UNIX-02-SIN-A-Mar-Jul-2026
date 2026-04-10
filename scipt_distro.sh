sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86
#Install all necessary libraries
git clone --depth 1 https://github.com/torvalds/linux.git cd linux
#clone the kernel repository
cd linux #I move to the Linux folder
make menuconfig #Configure the compilation options
make -j 2 # compile the kernel with the number of available cores
sudo mkdir /boot-files # Copy the kernel image to a working directory
sudo cp arch/x86/boot/bzImage /boot-files #move the system to a folder
