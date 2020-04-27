#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> prepare partitions
# loadkeys fr

# # disks already partitioned with  gdisk
# gdisk -l /dev/sda

# # format & mount partitions
# lsblk -l
# mkswap /dev/sda2
# swapon /dev/sda2
# swapon -s  # should show /dev/sda2 has Priority -2
# mkfs.ext4 /dev/sda3
# mount /dev/sda3 /mnt
# mkdir /mnt/home
# mkfs.ext4 /dev/sda4
# mount /dev/sda4 /mnt/home
# # forgot sda5...

#=> * Moto G4
# plugged into back top right USB
#  ip link   reports it as   enp0s29f7u6
dhcpcd enp0s29f7u6
ping -c 3 8.8.8.8

# #=> install essential stuff then chroot
# # install the base packages
# pacstrap /mnt base linux linux-firmware

# # genfstab
# genfstab -U /mnt >> /mnt/etc/fstab
# cat /mnt/etc/fstab

# # change root
# arch-chroot /mnt  # kills this script

# #=> system settings
# # time zone
# ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime

# # system clock
# timedatectl set-ntp true
# timedatectl status
# # doesn't show local correction

# # hardware clock
# hwclock --systohc

# # locale
# sed -i 's/^#en_GB.UTF-8/en_GB.UTF-8/' /etc/locale.gen
# sed -i 's/^#en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen
# sed -i 's/^#fr_FR.UTF-8/fr_FR.UTF-8/' /etc/locale.gen
# cat /etc/locale.gen | grep -v '^#'
# locale-gen
# # cat /etc/locale.conf   shows it ain't there
# echo LANG=fr_FR.UTF-8 > /etc/locale.conf
# # cat /etc/vconsole.conf  shows it ain't there
# echo KEYMAP=fr > /etc/vconsole.conf

# # Networking
# # cat /etc/hostname   shows it ain't there
# echo ltcm58 > /etc/hostname
# # /etc/hosts
# echo "127.0.0.1 localhost" >> /etc/hosts
# echo "::1       localhost" >> /etc/hosts
# echo "127.0.1.1 avt661.localdomain avt661" >> /etc/hosts

#=> * Updates
pacman -Syu

# #=> bootloader
# # Grub, Microcode, Network Time Protocol
# pacman -S grub intel-ucode ntp
# # lsblk -f  indicates sda
# grub-install --target=i386-pc /dev/sda
# # re-generate  grub.cfg
# grub-mkconfig -o /boot/grub/grub.cfg

# # udisks
# pacman -S udisks2

# # root password
# passwd

# # quit chroot
# exit

# #=> after Grub
# # check local time correction
# timedatectl status

# # framebuffer, Sudo & Tig
# pacman -S fbset sudo tig
# fbset -i

# # Numlock
# mkdir /etc/systemd/system/getty@.service.d
# echo [Service] > /etc/systemd/system/getty@.service.d/activate-numlock.conf
# echo "ExecStartPre=/bin/sh -c 'setleds +num < /dev/%I'" >> /etc/systemd/system/getty@.service.d/activate-numlock.conf
# cat /etc/systemd/system/getty@.service.d/activate-numlock.conf

# # swappinness
# # check that the default is 60
# cat /sys/fs/cgroup/memory/memory.swappiness
# # show that  /etc/sysctl.d  is empty
# # fix lower value, which will become effective after reboot
# echo "vm.swappiness=10" > /etc/sysctl.d/99-sysctl.conf
# ls /etc/sysctl.d

# #==> some Packages
# pacman -S reflector
# cd /etc/pacman.d
# reflector --country France --age 12 --protocol https --sort rate --save mirrorlist
# cat mirrorlist
# pacman -Syyuu

# #===> some Packages
# # meson, for auracle later
# pacman -S meson

# # NTFS-3G
# pacman -S ntfs-3g

# # Pacmatic
# pacman -S pacmatic python-html2text

# #==> Users
# # activate wheel group
# sed -i '0,/%wheel/ s/^# %wheel/%wheel/' /etc/sudoers
# grep wheel /etc/sudoers
# # check that  /etc/sudoers  parses OK
# visudo -c -f /etc/sudoers

# # User jo, creating the home directory and adding to group wheel
# useradd -m -G wheel jo
# until passwd jo; do echo "try again"; done

# #=> Softwares
# # AlsaUtils
# pacman -S alsa-utils

# # DNS Lookup utility
# pacman -S bind-tools

# # exa
# pacman -S exa

# # fzy
# pacman -S fzy

# # Git
# pacman -S git

# # iotop
# pacman -S iotop

# # lsof
# pacman -S lsof

# # mlocate
# pacman -S mlocate
# updatedb

# # Neofetch
# pacman -S neofetch

# # ncdu
# pacman -S ncdu

# # pkgstats
# pacman -S pkgstats

# # p7zip
# pacman -S p7zip

# # pkgfile
# pacman -S pkgfile
# pkgfile -u
# systemctl enable pkgfile-update.timer
# systemctl list-timers

# # rhash
# pacman -S rhash

# # ripgrep
# pacman -S ripgrep

# # Secure Shell
# pacman -S openssh

# # sysstat
# pacman -S sysstat

# # Wget
# pacman -S wget

# #=> anti-malware
# pacman -S clamav
# freshclam

# pacman -S firewalld
# systemctl enable firewalld
# systemctl start firewalld
# reboot  # maybe wasn't necessary

# #=> ClamAV empty sock file
# # as freshclam triggered warning "Clamd was NOT notified"
# touch /run/clamav/clamd.ctl
# chown clamav:clamav /run/clamav/clamd.ctl
# freshclam

# # ClamAV daemon
# systemctl enable clamav-daemon.service
# systemctl start clamav-daemon.service
# # freshclam daemon
# systemctl enable clamav-freshclam.service
# systemctl start clamav-freshclam.service

# #=> prepare for X
# # testing ClamAV - first turn off debug
# trap - debug
# #  be patient after the curl
# curl https://secure.eicar.org/eicar.com.txt | clamscan -
# trap read debug

# # check firewalld
# firewall-cmd --state

# # active zone
# firewall-cmd --set-default-zone=home
# # open UDP port 5353 (needed later for Avahi)
# firewall-cmd --permanent --zone=home --add-port 5353/udp
# firewall-cmd --info-zone=home

# # Intel video driver & OpenGL
# pacman -S xf86-video-intel mesa

# # Xorg
# pacman -S xorg-server

# # xinit
# pacman -S xorg-xinit

# # grab xinitrc
# cp /etc/X11/xinit/xinitrc $( dirname "${BASH_SOURCE[0]}" )

# # as you've written to this script's location on a removable drive, un-mount it now

#=> prepare for KDE
# default-icon-theme was already there
# pacman -S hicolor-icon-theme

# Have boot messages stay on tty1
mkdir /etc/systemd/system/dhcpcd@.service.d
cp $( dirname "${BASH_SOURCE[0]}" )/no-wait.conf /etc/systemd/system/dhcpcd@.service.d/no-wait.conf

# KDE
pacman -S kde-applications plasma
# phonon-qt5

# NeoMutt
pacman -S neomutt

# place bashrc
cp $( dirname "${BASH_SOURCE[0]}" )/rootBashrc .bashrc

# Ubuntu font family
pacman -S ttf-ubuntu-font-family

# now unmount this device and then login as jo

