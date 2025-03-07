#!/bin/bash

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 $OSAB
sd=$(dirname "${BASH_SOURCE[0]}")
. ${sd%/*}/nodes-Bash/export-storage
read -p "\$OSAB is $OSAB - looks good?"

#=> 1 go slow
set -ev  # quits on error, prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 2 allow dhcpcd without pw
bash -c "cat $OSAB/etc/sudoers/dhcpcd >> /etc/sudoers"
visudo -c -f /etc/sudoers
tail -n 2 /etc/sudoers

#=> 2 ClamAV 0 install
pacman -S clamav
freshclam  # takes a long time!

#=> 2 Firewalld 0
# 1 get & enable
pacman -S firewalld
systemctl enable firewalld --now

# 2 active zone
firewall-cmd --set-default-zone=home

#=> 2 Firewalld 1 port for Avahi
# open UDP port 5353
firewall-cmd --permanent --zone=home --add-port 5353/udp

# #=> 2 Firewalld 1 ports for KDE Connect
# firewall-cmd --zone=home --permanent --add-port=1714-1764/tcp
# firewall-cmd --zone=home --permanent --add-port=1714-1764/udp

#=> 2 Firewalld 2 restart
systemctl restart firewalld.service

#=> 2 Firewalld 3 check
firewall-cmd --state
firewall-cmd --info-zone=home

