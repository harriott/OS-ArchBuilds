#!/bin/bash
# vim: set fdl=2 sw=2:

# sudo bash $OSAB/bs-2-into_X/1-sudo-autoLoginTTY.sh
# - automatic login ttyx

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi
read -p "\$OSAB is $OSAB - looks good?"
set -ev  # quits on error, prints each statement here, including comments

#=> 2 ttyx
# r /etc/systemd/system

#==> tty1 0
[ -d /etc/systemd/system/getty@tty1.service.d ] || mkdir /etc/systemd/system/getty@tty1.service.d
ea=/etc/systemd/system/getty@tty1.service.d/autologin.conf
# eo=/etc/systemd/system/getty@tty1.service.d/override.conf

#==> tty1 1 on
cp $OSAB/nodes-etc/systemd/autologin.conf $ea; cat $ea
# cp $OSAB/nodes-etc/systemd/override.conf $eo; cat $eo

# #==> tty1 1 off
# rm $ea
# # rm $eo

#==> tty2 0
[ -d /etc/systemd/system/getty@tty2.service.d ] || mkdir /etc/systemd/system/getty@tty2.service.d
ea=/etc/systemd/system/getty@tty2.service.d/autologin.conf
# eo=/etc/systemd/system/getty@tty2.service.d/override.conf

# #==> tty1 2 on
# cp $OSAB/nodes-etc/systemd/autologin.conf $ea; cat $ea
# # cp $OSAB/nodes-etc/systemd/override.conf $eo; cat $eo

# #==> tty1 2 off
# rm $ea
# # rm $eo

#=> 3 finish
echo "now reboot"

