#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

ARCHBUILDS=/ArchBuilds

# #=> 0 internet check
# ping -c 3 8.8.8.8

#=> 1 ACPI
# for laptop
pacman -S acpi

#=> 1 CPU
# Cpupower
pacman -S cpupower

# turbostat
pacman -S turbostat

# #=> 1 disable dhcpcd wait at start
# mkdir /etc/systemd/system/dhcpcd@.service.d
# cp $ARCHBUILDS/etc/systemd/no-wait.conf /etc/systemd/system/dhcpcd@.service.d/no-wait.conf

# #=> 1 frame buffer
# pacman -S fbset
# # display all available frame buffer information
# fbset -i

# #=> 1 have boot messages stay on tty1
# mkdir /etc/systemd/system/getty@tty1.service.d
# cp $ARCHBUILDS/etc/systemd/noclear.conf /etc/systemd/system/getty@tty1.service.d/noclear.conf

# #=> 1 linux headers
# # for *8192eu*
# pacman -S linux-headers
# # - don't forget to  reboot !
# reboot

# #=> 1 Sudo Tig
# pacman -S sudo tig

# #=> 1 tk
# pacman -S tk  # for  gitk

# #=> 1 time zone
# # check local time correction
# timedatectl status

