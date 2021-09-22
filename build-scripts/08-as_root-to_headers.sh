#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

ARCHBUILDS=/ArchBuilds

#=> 0 internet check
ping -c 3 8.8.8.8

#=> 1 after Grub
# check local time correction
timedatectl status

# framebuffer, Sudo & Tig
pacman -S fbset sudo tig
# display all available frame buffer information
fbset -i

#=> 1 disable dhcpcd wait at start
mkdir /etc/systemd/system/dhcpcd@.service.d
cp $ARCHBUILDS/etc/systemd/no-wait.conf /etc/systemd/system/dhcpcd@.service.d/no-wait.conf

#=> 1 have boot messages stay on tty1
cp $ARCHBUILDS/etc/systemd/noclear.conf /etc/systemd/system/getty@tty1.service.d/noclear.conf

# #=> 1 linux headers
# # for *8192eu*
# pacman -S linux-headers
# # - don't forget to  reboot !
# reboot

