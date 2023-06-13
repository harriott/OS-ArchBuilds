#!/bin/bash
# vim: fdl=1:

# more often called from
#  $OSAB/bs-repeatable/as_root-mirrorlist_pacnew.sh
#  $OSAB/bs-0-to_root/3-when_chroot-to_bootloader.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -v  # prints each statement here, including comments

#=> better mirrorlist
cd /etc/pacman.d
reflector --latest 30 --protocol https --sort age --save mirrorlist
cat mirrorlist  # /etc/pacman.d/mirrorlist
pacman -Syu

# reboot if kernel updated !

