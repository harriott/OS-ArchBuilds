#!/bin/bash
# vim: fdl=1:

# #=> 0 iNet wireless daemon - install
# pacman -S iwd  # allowing an alternative to  NetworkManager + wpa_supplicant

#=> 1 iNet wireless daemon - enable
systemctl enable iwd.service --now

# #=> 0 root symlinks
# # - needs to be run from root, not from sudo

# ARCHBUILDS=/ArchBuilds

# ln -sf $ARCHBUILDS/root/bash_profile /root/.bash_profile  # sources root bashrc
# ln -sf $ARCHBUILDS/root/bashrc /root/.bashrc  # sources bashrc-generic

# ln -sf $ARCHBUILDS/Bash/inputrc /root/.inputrc

# ln -sf $ARCHBUILDS/root/rsyncBackup.sh /root/rsyncBackup.sh

