#!/bin/bash

# from root,  bash $OSAB/bs-1-into_jo/5-sudo-toFirewall.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -ev  # quits on error, prints each statement here, including comments

#=> 0 check $OSAB
read -p "\$OSAB is $OSAB - looks good?"

# #=> 2 ClamAV 0 install
# freshclam  # takes a long time to update the database!

# #=> 2 Firewalld 0
# # 1 get & enable
# pacman -S firewalld
# systemctl enable firewalld --now

# # 2 active zone
# firewall-cmd --set-default-zone=home

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

