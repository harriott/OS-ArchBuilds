#!/bin/bash
# vim: fdl=1:

# bash 28-Zen.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 1 Zen
# sudo pacman -S linux-zen

#=> 1 update GRUB
sudo grub-mkconfig -o /boot/grub/grub.cfg
# now  reboot  for  GRUB > Advanced optons for Arch Linux > Arch Linux, with Linux linux

