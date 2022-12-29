#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 $OSAB
# check  $OSAB/Bash/export-storage  has leveraged  /bs
echo $OSAB
true

#=> 1 for nano
mkdir -p ~/.config/nano

#=> 1 grab fstab
cp /etc/fstab /bs/fstab-$(date "+%F-%H-%M")

#=> 1 internet check
ping -c 3 8.8.8.8

#=> 2 ACPI
pacman -S acpi  # for laptop

#=> 2 CPU
# Cpupower
pacman -S cpupower

# turbostat
pacman -S turbostat

#=> 2 disable dhcpcd wait at start
mkdir /etc/systemd/system/dhcpcd@.service.d
cp $OSAB/etc/systemd/no-wait.conf /etc/systemd/system/dhcpcd@.service.d/no-wait.conf

#=> 2 frame buffer
pacman -S fbset
# display all available frame buffer information
fbset -i

#=> 2 have boot messages stay on tty1
mkdir /etc/systemd/system/getty@tty1.service.d
cp $OSAB/etc/systemd/noclear.conf /etc/systemd/system/getty@tty1.service.d/noclear.conf

#=> 2 Sudo Tig
pacman -S sudo tig

#=> 2 tk
pacman -S tk  # for  gitk

#=> 2 time zone
# check local time correction
timedatectl status

