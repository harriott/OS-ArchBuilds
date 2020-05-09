#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# sed -n '5p' build.sh
# script build-$(date "+%y%m%d-%H%M")

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 Moto G4
# # plugged into back top right USB
# #  ip link   reports it as   enp0s29f7u6
# dhcpcd enp0s29f7u6
# ping -c 3 8.8.8.8

# #=> 0 initial install
# as root:  bash build.sh

# #==> 0 environment variables
# # these are eventually set in  ~/.xinitrc  so can be passed through with  -E

# # ARCHBUILDS=/home/jo/Dropbox/JH/IT_stack/onGitHub/ArchBuilds
# # ARCHBUILDS=/home/jo/mnt/ArchBuilds
# # ARCHBUILDS=/mnt/mnt/ArchBuilds
# # ARCHBUILDS=/run/media/jo/K8GBDT100/ArchBuilds

# # MACHINE=$ARCHBUILDS/LTC-M58-7637; echo $MACHINE

# #==> 1 prepare partitions
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

# #==> 2 install essential stuff then chroot
# # install the base packages
# pacstrap /mnt base dhcpcd linux linux-firmware

# # genfstab
# genfstab -U /mnt >> /mnt/etc/fstab
# cat /mnt/etc/fstab

# # change root
# arch-chroot /mnt  # kills this script

# #==> 3 networking
# # cat /etc/hostname   shows it ain't there
# echo ltcm58 > /etc/hostname
# # /etc/hosts
# echo "127.0.0.1 localhost" >> /etc/hosts
# echo "::1       localhost" >> /etc/hosts
# echo "127.0.1.1 avt661.localdomain avt661" >> /etc/hosts

# #===> NetworkManager
# systemctl enable NetworkManager.service --now
# systemctl status NetworkManager.service
# true

# #==> 4 system settings
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

# #==> 5 bootloader
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

# #==> 6 after Grub
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

# #===> some Packages
# pacman -S reflector
# cd /etc/pacman.d
# reflector --country France --age 12 --protocol https --sort rate --save mirrorlist
# cat mirrorlist
# pacman -Syyuu

# #====> some Packages
# # meson, for auracle later
# pacman -S meson

# # NTFS-3G
# pacman -S ntfs-3g

# # Pacmatic
# pacman -S pacmatic python-html2text

# #===> Users
# # activate wheel group
# sed -i '0,/%wheel/ s/^# %wheel/%wheel/' /etc/sudoers
# grep wheel /etc/sudoers
# # check that  /etc/sudoers  parses OK
# visudo -c -f /etc/sudoers

# # User jo, creating the home directory and adding to group wheel
# useradd -m -G wheel jo
# until passwd jo; do echo "try again"; done

# #=> 1 Updates
# pacman -Syu
# # reboot if kernel updated !
# true

# #=> 1 when jo
# sudo -E bash build.sh  # passing through the environment
true

# #==> 0 environment variables
# # these are set in  ~/.xinitrc

# # ARCHBUILDS=/home/jo/Dropbox/JH/IT_stack/onGitHub/ArchBuilds
# # ARCHBUILDS=/home/jo/mnt/ArchBuilds
# # ARCHBUILDS=/mnt/mnt/ArchBuilds
# # ARCHBUILDS=/run/media/jo/K8GBDT100/ArchBuilds

# # MACHINE=$ARCHBUILDS/LTC-M58-7637; echo $MACHINE

# #==> 1 fstab
# # add HD103SJ to fstab
# echo "LABEL=HD103SJ /mnt/HD103SJ  ext4  defaults  0  2" >> /etc/fstab
# cp /etc/fstab $MACHINE/fstab
# chown jo:jo $MACHINE/fstab
# halt -p

# #==> 1 to X

# #===> automatic login to virtual console
# ls /etc/systemd/system
# mkdir /etc/systemd/system/getty@tty1.service.d
# cp $ARCHBUILDS/etc/systemd/override.conf /etc/systemd/system/getty@tty1.service.d/override.conf
# reboot

# #===> allow dhcpcd without pw
# bash -c "cat /mnt/mnt/sudoers-dhcpcd >> /etc/sudoers"
# visudo -c -f /etc/sudoers
# cat /etc/sudoers

# #===> ClamAV
# pacman -S clamav
# freshclam

# #====> ClamAV empty sock file
# # as freshclam triggered warning "Clamd was NOT notified"
# touch /run/clamav/clamd.ctl
# chown clamav:clamav /run/clamav/clamd.ctl
# freshclam

# #====> ClamAV daemons
# systemctl enable clamav-daemon.service --now
# systemctl status clamav-daemon.service

# # freshclam daemon
# systemctl enable clamav-freshclam.service --now

# systemctl disable clamav-daemon.service --now

# #====> testing ClamAV
# first turn off debug
# trap - debug
# #  be patient after the curl
# curl https://secure.eicar.org/eicar.com.txt | clamscan -
# trap read debug

# #===> disable dhcpcd wait at start
# mkdir /etc/systemd/system/dhcpcd@.service.d
# cp $ARCHBUILDS/etc/systemd/no-wait.conf /etc/systemd/system/dhcpcd@.service.d/no-wait.conf

# #===> Firewalld
# pacman -S firewalld
# systemctl enable firewalld --now

# # active zone
# firewall-cmd --set-default-zone=home
# # open UDP port 5353 (needed later for Avahi)
# firewall-cmd --permanent --zone=home --add-port 5353/udp
# firewall-cmd --info-zone=home

# # check firewalld
# firewall-cmd --state

# #===> generate 00-keyboard.conf
# localectl --no-convert set-x11-keymap fr logitech_base
# localectl status
# true

# #===> have boot messages stay on tty1
# cp $ARCHBUILDS/etc/systemd/noclear.conf /etc/systemd/system/getty@tty1.service.d/noclear.conf

# #===> Intel video driver & OpenGL
# pacman -S xf86-video-intel mesa

# #===> prepare for X
# # Xorg
# pacman -S xorg-server

# # xinit
# pacman -S xorg-xinit

# # X settings
# pacman -S xorg-xset

# # xsel
# pacman -S xsel

# #===> root bash configurations
# cp $ARCHBUILDS/root/bash_profile /root/.bash_profile
# cp $ARCHBUILDS/root/bashrc /root/.bashrc

# #===> softwares - appearance
# # default-icon-theme was already there
# # pacman -S hicolor-icon-theme

# # Ubuntu font family
# pacman -S ttf-ubuntu-font-family

# #===> softwares - AV
# # AlsaUtils
# pacman -S alsa-utils

# # mediainfo
# pacman -S mediainfo

# #===> softwares - file manage
# # bat
# pacman -S bat

# # broot
# pacman -S broot

# # exa
# pacman -S exa

# # fd
# pacman -S fd

# # fzf
# pacman -S fzf

# # fzy
# pacman -S fzy

# # Git
# pacman -S git

# # mlocate
# pacman -S mlocate
# updatedb

# # ncdu
# pacman -S ncdu

# # p7zip
# pacman -S p7zip

# # rhash
# pacman -S rhash

# # ripgrep
# pacman -S ripgrep

# # rsync
# pacman -S rsync

# # shfmt (for bat-extras-git)
# pacman -S shfmt

# # trash-cli
# pacman -S trash-cli

# #===> softwares - info
# # htop
# pacman -S htop

# # iotop
# pacman -S iotop

# # lshw
# pacman -S lshw

# # lsof
# pacman -S lsof

# # man-db
# pacman -S man-db

# # man-pages
# pacman -S man-pages

# # Neofetch
# pacman -S neofetch

# # sysstat
# pacman -S sysstat

# #===> softwares - networking
# # DNS Lookup utility
# pacman -S bind-tools

# # Chromium
# pacman -S chromium

# # iNet Wireless Daemon
# pacman -S iwd
# systemctl enable iwd.service --now
# systemctl status iwd.service
# true

# # LastPass CLI
# pacman -S lastpass-cli

# # NeoMutt
# pacman -S neomutt

# # Secure Shell
# pacman -S openssh

# # Wget
# pacman -S wget

# #===> softwares - system
# # appmenu-gtk-module - for *8192eu*
# pacman -S appmenu-gtk-module
# pacman -Rs appmenu-gtk-module
# true

# # Bashtop
# sudo pacman -S bashtop

# # dkms - for *8192eu*
# pacman -S dkms
# # - don't forget to  reboot !
# true

# # espeak-ng-espeak & termdown
# pacman -S espeak-ng-espeak termdown

# # fcron
# pacman -S fcron
# systemctl enable fcron.service

# # linux headers - for *8192eu*
# pacman -S linux-headers
# # - don't forget to  reboot !
# true

# # pkgfile
# pacman -S pkgfile
# pkgfile -u
# systemctl enable pkgfile-update.timer
# systemctl list-timers

# # pkgstats
# pacman -S pkgstats

# # xterm
# pacman -S xterm

# #===> vim
# # 0 gVim
# pacman -S gvim

# #====> 1 Vim
# # flake8
# pacman -S flake8

# # Neovim
# pacman -S neovim python-pynvim

# # Packages
# pacman -S vim-ale vim-airline vim-bufexplorer vim-ctrlp vim-easymotion vim-gitgutter vim-nerdcommenter vim-supertab vim-surround vim-syntastic vim-tabular

# # ShellCheck (for bash linting in xVim)
# pacman -S shellcheck

# #==> 2 ownership of HD103SJ
# chown -Rc jo:jo /mnt/HD103SJ
# rm -r /mnt/HD103SJ/lost+found
# true

# #==> 2 when X

# #===> monitor settings
# # disable DPMS
# cp $ARCHBUILDS/etc/10-monitor.conf /etc/X11/xorg.conf.d/

# # stop the 600s screensaver, until reboot
# xset s off

# #===> KDE 0
# pacman -S kde-applications plasma
# # phonon-qt5

# #===> KDE 1

# #====> KDE Partition Manager
# # (it's not in Discover...)
# pacman -S partitionmanager

# #===> xautomation
# # for mouse middle click
# pacman -S xautomation

# #==> 3 user dj
# # creating the home directory and adding to group wheel
# useradd -m -G wheel dj  #  wheel allows sudo
# until passwd dj; do echo 'try again'; done
# mkdir ~/dup
# chmod o=rx ~/dup  #  full permissions for other users

# #===> automatic login to virtual console
# cp "$MACHINE/override-dj.conf" /etc/systemd/system/getty@tty1.service.d/override.conf
# cat /etc/systemd/system/getty@tty1.service.d/override.conf
# # reboot when ready
# true

