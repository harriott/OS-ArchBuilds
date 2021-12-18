#!/bin/bash

# set -v  # prints each statement here, including comments
# trap read debug  # puts a read request after each executable line

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

# #=> 0 ARCHBUILDS
# . 05-exports.sh

# #=> 1 allow dhcpcd without pw
# bash -c "cat $ARCHBUILDS/etc/sudoers-dhcpcd >> /etc/sudoers"
# visudo -c -f /etc/sudoers
# tail -n 2 /etc/sudoers

# #=> 1 ClamAV 0 install
# pacman -S clamav
# freshclam  # takes a long time!

# #=> 1 Firewalld 0
# # 1 get & enable
# pacman -S firewalld
# systemctl enable firewalld --now

# # 2 active zone
# firewall-cmd --set-default-zone=home

# #=> 1 Firewalld 1 port for Avahi
# # open UDP port 5353
# firewall-cmd --permanent --zone=home --add-port 5353/udp

# #=> 1 Firewalld 1 ports for KDE Connect
# firewall-cmd --zone=home --permanent --add-port=1714-1764/tcp
# firewall-cmd --zone=home --permanent --add-port=1714-1764/udp

# #=> 1 Firewalld 2 restart
# systemctl restart firewalld.service

# #=> 1 Firewalld 3 check
# firewall-cmd --state
# firewall-cmd --info-zone=home

#=> 2 go fast
trap - debug  # turn off debug
set +v

#=> 2 Firewalld - firewall-applet
ln -sf $ARCHBUILDS/jo/firewalldApplet.conf ~/.config/firewall/applet.conf

# #=> 2 Firewalld - firewall-applet icons - fixed size
# hc=/usr/share/icons/hicolor
# good=/usr/share/icons/Adwaita
# good=/usr/share/icons/default
# for size in 16x16 24x24 32x32 48x48; do
#     echo $size
#     [ -d $good/$size/apps ] || mkdir -p $good/$size/apps
#     for icon in firewall-applet-error.png firewall-applet-panic.png firewall-applet.png firewall-config.png; do
#         ln -sf $hc/$size/apps/$icon $good/$size/apps/$icon
#     done
#     ls $good/$size/apps
# done

#=> 2 Firewalld - firewall-applet icons - scalable
hc=/usr/share/icons/hicolor/scalable/apps
good=/usr/share/icons/Adwaita/scalable/apps
# good=/usr/share/icons/default/scalable/apps
echo $good
for icon in firewall-applet-error.svg firewall-applet-panic.svg firewall-applet.svg firewall-config.svg; do
    ln -sf $hc/$icon $good/$icon
done
ls $good

