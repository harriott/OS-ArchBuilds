#!/bin/bash
# vim: fdl=1:

if [[ $(id -u) > 0 ]]; then
  echo "Run this as root!"
  exit
fi

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> better mirrorlist
cd /etc/pacman.d
reflector --country France --age 12 --protocol https --sort rate --save mirrorlist
cat mirrorlist
pacman -Syyuu
cd ~

