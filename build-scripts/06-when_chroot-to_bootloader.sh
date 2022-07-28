#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 test internet
# # ping -c 3 8.8.8.8
# ping -c 3 -n google.com  # for Jo-XA2

#=> 1 updates
. 02-as_root-updates.sh

#=> 2 time
# time zone
ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime

# system clock
timedatectl set-ntp true
timedatectl status
# doesn't show local correction

# hardware clock
hwclock --systohc

#=> 2 locale (GB or Fr)
# locale
sed -i 's/^#en_GB.UTF-8/en_GB.UTF-8/' /etc/locale.gen
sed -i 's/^#en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen
sed -i 's/^#fr_FR.UTF-8/fr_FR.UTF-8/' /etc/locale.gen
cat /etc/locale.gen | grep -v '^#'
locale-gen
cat /etc/locale.conf  # shows it ain't there
# echo LANG=fr_FR.UTF-8 > /etc/locale.conf
echo LANG=en_GB.UTF-8 > /etc/locale.conf
cat /etc/vconsole.conf  # shows it ain't there
# echo KEYMAP=fr > /etc/vconsole.conf
echo KEYMAP=uk > /etc/vconsole.conf

#=> 3 hostname
cat /etc/hostname  # shows it ain't there
hostname=AsusW202
# hostname=i34G1TU02
# hostname=LIP120s81A4
# hostname=sbMb
echo $hostname > /etc/hostname
cat /etc/hostname

#=> 3 hosts
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
# echo "127.0.1.1 avt661.localdomain avt661" >> /etc/hosts
echo "127.0.1.1 $hostname" >> /etc/hosts
cat /etc/hosts

#=> 4 better mirrorlist
pacman -S reflector
. 02-when_chroot-reflector.sh

#=> 5 bootloader
# 0 GRUB, Network Time Protocol
pacman -S efibootmgr grub ntp

# 1 Microcode
# pacman -S amd-ucode
pacman -S intel-ucode

#=> 6 bootloader
# 2 install GRUB
grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB

# 3 generate  grub.cfg
grub-mkconfig -o /boot/grub/grub.cfg

#=> 7 final tweaks
# dhcpcd
pacman -S dhcpcd

# iNet wireless daemon - install
pacman -S iwd  # allowing an alternative to  NetworkManager + wpa_supplicant

# lsusb
pacman -S usbutils

# udisks
pacman -S udisks2

# root password
until passwd; do echo 'try again'; done

#=> 7 nano
ARCHBUILDS=/ArchBuilds
pacman -S nano-syntax-highlighting

#==> jo nanorc
mkdir /home/jo/.config/nano
ln -sf $ARCHBUILDS/jo/textEdit/nanorc /home/jo/.config/nano/nanorc
nvim -O /home/jo/.config/nano/nanorc /etc/nanorc

#==> root nanorc
mkdir ~/.config/nano
ln -sf $ARCHBUILDS/root/nanorc ~/.config/nano/nanorc
nvim -O ~/.config/nano/nanorc /etc/nanorc

#=> 8 finish
# Quit chroot now, and reboot!

