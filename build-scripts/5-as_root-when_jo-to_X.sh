#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# to be sourced from a parent build script

# #=> 0 fstab
# # add HD103SJ to fstab
# echo "LABEL=HD103SJ /mnt/HD103SJ  ext4  defaults  0  2" >> /etc/fstab
# cp /etc/fstab $MACHINE/fstab
# chown jo:jo $MACHINE/fstab
# halt -p

# #=> 0 to X
# really needed

# #==> automatic login to virtual console
# ls /etc/systemd/system
# mkdir /etc/systemd/system/getty@tty1.service.d
# cp $ARCHBUILDS/etc/systemd/override.conf /etc/systemd/system/getty@tty1.service.d/override.conf
# reboot

# #==> allow dhcpcd without pw
# bash -c "cat /mnt/mnt/sudoers-dhcpcd >> /etc/sudoers"
# visudo -c -f /etc/sudoers
# cat /etc/sudoers

# #==> ClamAV
# pacman -S clamav
# freshclam

# #===> ClamAV empty sock file
# # as freshclam triggered warning "Clamd was NOT notified"
# touch /run/clamav/clamd.ctl
# chown clamav:clamav /run/clamav/clamd.ctl
# freshclam

# #===> ClamAV daemons
# systemctl enable clamav-daemon.service --now
# systemctl status clamav-daemon.service

# # freshclam daemon
# systemctl enable clamav-freshclam.service --now

# systemctl disable clamav-daemon.service --now

# #===> testing ClamAV
# first turn off debug
# trap - debug
# #  be patient after the curl
# curl https://secure.eicar.org/eicar.com.txt | clamscan -
# trap read debug

# #==> Firewalld
# pacman -S firewalld
# systemctl enable firewalld --now

# # active zone
# firewall-cmd --set-default-zone=home
# # open UDP port 5353 (needed later for Avahi)
# firewall-cmd --permanent --zone=home --add-port 5353/udp
# firewall-cmd --info-zone=home  # essential for the ports

# # check firewalld
# firewall-cmd --state

# ports for KDE Connect
# firewall-cmd --zone=home --permanent --add-port=1714-1764/tcp
# firewall-cmd --zone=home --permanent --add-port=1714-1764/udp
# systemctl restart firewalld.service

# #==> prepare for X
# # Xorg
# pacman -S xorg-server

# # xinit
# pacman -S xorg-xinit

# # X settings
# pacman -S xorg-xset

# # xsel
# pacman -S xsel

# #==> root bash configurations
# cp $ARCHBUILDS/root/bashrc /root/.bashrc  # the only one that's best kept as a hard copy

# #=> 1 when X
# wanted

# #==> monitor settings
# # disable DPMS
# cp $ARCHBUILDS/etc/10-monitor.conf /etc/X11/xorg.conf.d/

# # stop the 600s screensaver, until reboot
# xset s off

# #==> softwares - appearance
# # default-icon-theme was already there
# # pacman -S hicolor-icon-theme

# # Ubuntu font family
# pacman -S ttf-ubuntu-font-family

# #==> softwares - AV
# # AlsaUtils
# pacman -Rs alsa-utils
# pacman -S alsa-utils

# # mediainfo
# pacman -S mediainfo

# # PulseAudio
# pacman -S pulsemixer
# # removal step 1 (also removes pulseaudio-alsa)
# pacman -Rs zoom
# # removal step 1 (also removes pulseaudio)
# pacman -Rs pulsemixer

# #==> softwares - file manage
# # fzy
# pacman -S fzy

# # Git
# pacman -S git

# # rsnapshot install
# pacman -S rsnapshot

# # shfmt (for bat-extras-git)
# pacman -S shfmt

# #==> softwares - info
# # Neofetch
# pacman -S neofetch

# #==> softwares - networking
# # DNS Lookup utility
# pacman -S bind-tools

# # Chromium
# pacman -S chromium

# # LastPass CLI
# pacman -S lastpass-cli

# # NeoMutt
# pacman -S neomutt

# # Secure Shell
# pacman -S openssh

# # sshfs (for KDE Connect)
# pacman -S sshfs

# #==> softwares - pdfsam
# # brings in jdk-openjdk
# pacman -S pdfsam

# #==> softwares - system
# # espeak-ng-espeak & termdown
# pacman -S espeak-ng-espeak termdown

# # my system backup script
# ln -sf $ARCHBUILDS/root/rsyncBackup.sh /root/rsyncBackup.sh

# # xterm
# pacman -S xterm

# #==> vim
# # 0 gVim
# pacman -S gvim

# #===> 1 Vim
# # flake8
# pacman -S flake8

# # Neovim
# pacman -S neovim python-pynvim

# # Packages
# pacman -S vim-ale vim-airline vim-bufexplorer vim-ctrlp vim-easymotion vim-gitgutter vim-nerdcommenter vim-supertab vim-surround vim-syntastic vim-tabular

# # ShellCheck (for bash linting in xVim)
# pacman -S shellcheck

# #==> xautomation
# # for mouse middle click
# pacman -S xautomation

