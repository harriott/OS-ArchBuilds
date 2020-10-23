#!/bin/bash
# vim: fdm=expr ft=sh.shfold:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

ARCHBUILDS=/ArchBuilds

#=> allow dhcpcd without pw
bash -c "cat $ARCHBUILDS/etc/sudoers-dhcpcd >> /etc/sudoers"
visudo -c -f /etc/sudoers
cat /etc/sudoers

#=> ClamAV
pacman -S clamav
freshclam  # takes a long time!

#==> ClamAV empty sock file
# as freshclam triggered warning "Clamd was NOT notified"
touch /run/clamav/clamd.ctl
chown clamav:clamav /run/clamav/clamd.ctl
freshclam

# #==> freshclam daemon
# systemctl enable clamav-freshclam.service --now

#==> testing ClamAV
# first turn off debug
trap - debug
#  be patient after the curl
curl https://secure.eicar.org/eicar.com.txt | clamscan -
trap read debug

#=> Firewalld 0
# 1 get & enable
pacman -S firewalld
systemctl enable firewalld --now

# 2 active zone
firewall-cmd --set-default-zone=home

#=> Firewalld 1 ports
# open UDP port 5353 (needed later for Avahi)
firewall-cmd --permanent --zone=home --add-port 5353/udp

# #==> for KDE Connect
# firewall-cmd --zone=home --permanent --add-port=1714-1764/tcp
# firewall-cmd --zone=home --permanent --add-port=1714-1764/udp

#==> restart
systemctl restart firewalld.service

