#!/bin/bash

# bash $OSAB/bs-2-into_X/3-sudo-to_X-0.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi
set -ev  # quits on error, prints each statement here, including comments

read -p "\$OSAB is $OSAB - looks good?"

#=> 1 MZNLN128  into  fstab
echo >> /etc/fstab
echo 'LABEL=MZNLN128 /mnt/MZNLN128 ext4 defaults 0 2' >> /etc/fstab
echo >> /etc/fstab
# - ready for next boot

#=> 2 prepare for X
# Xorg
pacman -S xorg-server

# xinit
pacman -S xorg-xinit

# X settings
pacman -S xorg-xset

# xsel
pacman -S xsel

#=> 2 prepare for X - updatedb.conf
if   [[ $host =~ HPEB840G37 ]]; then
  sudo cp $OSAB/mb-HPEB840G3x/7/etc/updatedb.conf /etc/updatedb.conf
elif [[ $host =~ HPEB840G38 ]]; then
  sudo cp $OSAB/mb-HPEB840G3x/8/etc/updatedb.conf /etc/updatedb.conf
else
  sudo cp $machBld/etc/updatedb.conf /etc/updatedb.conf
fi
updatedb

# #=> 2 save grub.cfg
# gcs="$machLg/boot-grub-grub-pb3.cfg"
# cp /boot/grub/grub.cfg $gcs; chown jo:jo $gcs
# # pb $gcs

#=> 3 softwares - encoding - entr
# entr (also used by batwatch)
pacman -S entr

#=> 3 softwares - encoding - for bat-extras
# prettier (needs  nodejs)
pacman -S prettier

# python-black
pacman -S python-black

# shfmt
pacman -S shfmt

# #=> 3 softwares - encoding - for easyplayer
# pacman -S python-numpy

#=> 3 softwares - encoding - NeoMutt
pacman -S neomutt  # brings in  notmuch-runtime

#=> 3 softwares - file manage - bat-extras
pacman -S bat-extras  # brings in bat (used in  fzf --preview)
# bat-modules, batdiff, batgrep, batman, batpipe, batwatch, prettybat

#=> 3 softwares - file manage - fzy
pacman -S fzy

#=> 3 softwares - file manage - rsnapshot install
pacman -S rsnapshot

#=> 3 softwares - networking
# aria2
pacman -S aria2

# msmtp-mta
pacman -S msmtp-mta  # brings in  msmtp

# OpenSSH
pacman -S openssh

#=> 3 softwares - rebuild-detector
pacman -S rebuild-detector

#=> 3 softwares - systeroid
pacman -S systeroid

