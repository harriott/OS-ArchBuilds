#!/bin/bash
# vim: fdl=1:

# more often called from
#  $bSc/0-to_root/3-when_chroot-to_bootloader.sh
#  $bSc/repeatable/as_root-mirrorlist_pacnew.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -v  # prints each statement here, including comments

#=> better mirrorlist
cd /etc/pacman.d
reflector --latest 30 --protocol https --sort age --save mirrorlist
cat mirrorlist
pacman -Syyuu

# reboot if kernel updated !

