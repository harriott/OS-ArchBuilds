#!/bin/bash
# vim: set fdl=2 sw=2:

# sudo bash $OSAB/bs-2-to_X/1-sudo-autoLoginTTY.sh
# - automatic login ttyx

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi
read -p "\$OSAB is $OSAB - looks good?"
set -ev  # quits on error, prints each statement here, including comments

#=> 2 ttyx
# r /etc/systemd/system

#==> tty1 0
[ -d /etc/systemd/system/getty@tty1.service.d ] || mkdir /etc/systemd/system/getty@tty1.service.d

#==> tty1 1 on
cp $OSAB/nodes-etc/systemd/autologin.conf /etc/systemd/system/getty@tty1.service.d/autologin.conf
# cp $OSAB/nodes-etc/systemd/override.conf /etc/systemd/system/getty@tty1.service.d/override.conf

# #==> tty1 1 off
# rm /etc/systemd/system/getty@tty1.service.d/autologin.conf
# # rm /etc/systemd/system/getty@tty1.service.d/override.conf

# #==> tty2 0
# [ -d /etc/systemd/system/getty@tty2.service.d ] || mkdir /etc/systemd/system/getty@tty2.service.d

# #==> tty1 2 on
# cp $OSAB/nodes-etc/systemd/autologin.conf /etc/systemd/system/getty@tty2.service.d/autologin.conf
# # cp $OSAB/nodes-etc/systemd/override.conf /etc/systemd/system/getty@tty2.service.d/override.conf

# #==> tty1 2 off
# rm /etc/systemd/system/getty@tty2.service.d/autologin.conf
# # rm /etc/systemd/system/getty@tty2.service.d/override.conf

#=> 3 finish
echo "now reboot"

