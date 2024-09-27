#!/bin/bash
# vim: fdl=1:

# bash $OSAB/bs-repeatable/Zen.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 Zen
# sudo pacman -S linux-zen linux-zen-headers

#=> 1 tweak GRUB
sudo sed -i 's/^GRUB_DEFAULT=0/GRUB_DEFAULT=saved/' /etc/default/grub
rg '^GRUB_DEFAULT' /etc/default/grub
sudo sed -i 's/#GRUB_SAVEDEFAULT/GRUB_SAVEDEFAULT/' /etc/default/grub
rg GRUB_SAVEDEFAULT /etc/default/grub
sudo sed -i 's/#GRUB_DISABLE_SUBMENU/GRUB_DISABLE_SUBMENU/' /etc/default/grub
rg GRUB_DISABLE_SUBMENU /etc/default/grub

#=> 1 update GRUB
sudo grub-mkconfig -o /boot/grub/grub.cfg

#=> 2 reboot
echo "Now  reboot !"

