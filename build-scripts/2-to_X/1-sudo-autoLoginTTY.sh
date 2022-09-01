#!/bin/bash

# automatic login ttyx

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 $ARCHBUILDS
cd $(dirname "${BASH_SOURCE[0]}")
. ../Bash/export-storage
read -p "\$ARCHBUILDS is $ARCHBUILDS - looks good?"

#=> 1 go slow
set -ev  # quits on error, prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 2 ttyx
# r /etc/systemd/system

#==> tty1 0
[ -d /etc/systemd/system/getty@tty1.service.d ] || mkdir /etc/systemd/system/getty@tty1.service.d

#==> tty1 1 on
cp $ARCHBUILDS/etc/systemd/autologin.conf /etc/systemd/system/getty@tty1.service.d/autologin.conf
# cp $ARCHBUILDS/etc/systemd/override.conf /etc/systemd/system/getty@tty1.service.d/override.conf

# #==> tty1 1 off
# rm /etc/systemd/system/getty@tty1.service.d/autologin.conf
# # rm /etc/systemd/system/getty@tty1.service.d/override.conf

# #==> tty2 0
# [ -d /etc/systemd/system/getty@tty2.service.d ] || mkdir /etc/systemd/system/getty@tty2.service.d

# #==> tty1 2 on
# cp $ARCHBUILDS/etc/systemd/autologin.conf /etc/systemd/system/getty@tty2.service.d/autologin.conf
# # cp $ARCHBUILDS/etc/systemd/override.conf /etc/systemd/system/getty@tty2.service.d/override.conf

# #==> tty1 2 off
# rm /etc/systemd/system/getty@tty2.service.d/autologin.conf
# # rm /etc/systemd/system/getty@tty2.service.d/override.conf

#=> 3 finish
echo "now reboot"

