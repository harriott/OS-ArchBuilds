#!/bin/bash

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -v  # prints each statement here, including comments

#=> clamd.conf
nvim -o /etc/clamav/clamd.conf /etc/clamav/clamd.conf.pacnew -c 'windo difft'
rm /etc/clamav/clamd.conf.pacnew

#=> mirrorlist
rm /etc/pacman.d/mirrorlist.pacnew
. 02-when_chroot-reflector.sh

#=> sshd_config
nvim -O /etc/ssh/sshd_config /etc/ssh/sshd_config.pacnew -c 'windo difft'
rm /etc/ssh/sshd_config.pacnew
