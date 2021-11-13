#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 doas
pacman -S opendoas
cp $ARCHBUILDS/etc/doas.conf /etc/doas.conf
chmod -c 0400 /etc/doas.conf

# #=> 0 file manage
# # bat
# pacman -S bat

# # broot
# pacman -S broot
# broot # to generate br command

# # dvd+rw-tools
# pacman -S dvd+rw-tools

# # exa
# pacman -S exa

# # fd
# pacman -S fd

# # fzf
# pacman -S fzf

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

# # trash-cli
# pacman -S trash-cli

# # tree
# pacman -S tree

# #=> 0 info
# # Bashtop
# pacman -S bashtop  # later superseded by AUR bpytop

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

# # progress
# pacman -S progress

# # sysstat
# pacman -S sysstat

# #=> 0 limit systemd Journal size
# # helpful for  LIP120s81A4
# sed -i 's/^#SystemMaxUse=/SystemMaxUse=300/' /etc/systemd/journald.conf
# grep SystemMaxUse /etc/systemd/journald.conf

# #=> 0 NetworkManager 1 install
# pacman -S networkmanager
# systemctl enable NetworkManager.service --now

# #=> 0 NetworkManager 2 status
# systemctl status NetworkManager.service | cat
# true

# #=> 0 netcat
# pacman -S openbsd-netcat

# #=> 0 Rootkit Hunter
# pacman -S rkhunter
# source 00-as_root-RootkitHunt.sh

# #=> 0 softwares - networking
# # isync
# pacman -S isync  # for mbsync

# # tcpdump
# pacman -S tcpdump  # for packet analysis

# # Wget
# pacman -S wget

# #=> 0 system
# # fcron
# pacman -S fcron
# systemctl enable fcron.service

# # glances
# pacman -S glances

# # Mesa demos
# pacman -S mesa-demos

# # meson, for auracle later
# pacman -S meson

# # NTFS-3G
# pacman -S ntfs-3g

# # pacman-contrib, for paccache
# pacman -S pacman-contrib

# # pacutils
# pacman -S pacutils

# # Pipe Viewer
# pacman -S pv

# # pkgfile - for finding possible packages
# pacman -S pkgfile
# pkgfile -u
# systemctl enable pkgfile-update.timer --now
# systemctl list-timers

# # pkgstats
# pacman -S pkgstats

# #=> 0 various
# # universal-ctags
# pacman -S ctags

# # pass (bring in gnupg)
# pacman -S pass

# #=> 0 swappiness to 10
# # check that the default is 60
# cat /sys/fs/cgroup/memory/memory.swappiness
# # show that  /etc/sysctl.d  is empty
# ls /etc/sysctl.d
# # fix lower value, which will become effective after reboot
# echo "vm.swappiness=00" > /etc/sysctl.d/99-sysctl.conf
# ls /etc/sysctl.d

# #=> 0 Users
# # activate wheel group
# sed -i '0,/%wheel/ s/^# %wheel/%wheel/' /etc/sudoers
# grep wheel /etc/sudoers
# # check that  /etc/sudoers  parses OK
# visudo -c -f /etc/sudoers

# # User jo, creating the home directory and adding to group wheel
# useradd -m -G wheel jo
# until passwd jo; do echo "try again"; done
# cat /etc/passwd

# #=> tmux configuration
# ln -sf $tmx/tmux.conf ~/.tmux.conf

#=> 1 end
# you're ready to reboot and login to jo

