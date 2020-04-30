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

#=> * Updates
pacman -Syu

# #=> install essential stuff then chroot
# # install the base packages
# pacstrap /mnt base dhcpcd linux linux-firmware

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

# #=> Automatic login to virtual console
# ls /etc/systemd/system
# mkdir /etc/systemd/system/getty@tty1.service.d
# cp /mnt/mnt/override.conf /etc/systemd/system/getty@tty1.service.d/override.conf
# reboot

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
# cp /etc/X11/xinit/xinitrc /mnt/mnt

# #=> prepare for KDE
# # allow dhcpcd without pw
# bash -c "cat /mnt/mnt/sudoers-dhcpcd >> /etc/sudoers"
# visudo -c -f /etc/sudoers
# cat /etc/sudoers

# # default-icon-theme was already there
# # pacman -S hicolor-icon-theme

# # flake8
# pacman -S flake8

# # generate 00-keyboard.conf
# localectl --no-convert set-x11-keymap fr logitech_base
# localectl status

# # KDE
# pacman -S kde-applications plasma
# # phonon-qt5

# # LastPass CLI
# pacman -S lastpass-cli

# # NeoMutt
# pacman -S neomutt

# # ShellCheck (for bash linting in xVim)
# pacman -S shellcheck

# # terminal emulators
# pacman -S rxvt-unicode xterm

# # trash-cli
# pacman -S trash-cli

# # Ubuntu font family
# pacman -S ttf-ubuntu-font-family

# # X settings
# pacman -S xorg-xset

# # xsel
# pacman -S xsel

# #=> Have boot messages stay on tty1
# mkdir /etc/systemd/system/dhcpcd@.service.d
# cp /mnt/mnt/no-wait.conf /etc/systemd/system/dhcpcd@.service.d/no-wait.conf

# #=> final tweaks 1
# # bat
# pacman -S bat

# # fd
# pacman -S fd

# # fzf
# pacman -S fzf

# # htop
# pacman -S htop

# # mediainfo
# pacman -S mediainfo

# # Neovim
# pacman -S neovim python-pynvim

# #=> final tweaks 2
# # root bash configurations
# cp /mnt/mnt/ArchBuilds/root/bash_profile /root/.bash_profile
# cp /mnt/mnt/ArchBuilds/root/bashrc /root/.bashrc

# # shfmt (for bat-extras-git)
# pacman -S shfmt

#=> final tweaks 3
# Bashtop
sudo pacman -S bashtop

# chromium
pacman -S chromium

# espeak-ng-espeak & termdown
pacman -S espeak-ng-espeak termdown
espeak -v fr+f2 "Bonjour tout le monde"

# fcron
pacman -S fcron
systemctl enable fcron.service

# vim Packages
pacman -S vim-ale vim-colors-solarized-git vim-airline vim-bufexplorer vim-calendar-vim vim-ctrlp vim-easymotion vim-gitgutter vim-LanguageTool vim-nerdcommenter vim-simpylfold  for Python folding vim-supertab  for better tab completion vim-surround vim-syntastic vim-tabular vim-undotree vim-mediawiki

# default browser
xdg-open https://archlinux.org

#=> finish as root
# now login as jo
exit

