#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# testing ClamAV - first turn off debug
trap - debug
#  be patient after the curl
curl https://secure.eicar.org/eicar.com.txt | clamscan -
trap read debug

# check firewalld
firewall-cmd --state

# active zone
firewall-cmd --set-default-zone=home
# open UDP port 5353 (needed later for Avahi)
firewall-cmd --permanent --zone=home --add-port 5353/udp
firewall-cmd --info-zone=home

# Intel video driver & OpenGL
pacman -S xf86-video-intel mesa

# Xorg
pacman -S xorg-server

# xinit
pacman -S xorg-xinit

# grab xinitrc
cp /etc/X11/xinit/xinitrc $( dirname "${BASH_SOURCE[0]}" )

# as you've written to this script's location on a removable drive, un-mount it now

