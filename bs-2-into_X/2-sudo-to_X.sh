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

#=> 2 prepare for X 0 Xorg
pacman -S xorg-server  # Xorg

#=> 2 prepare for X 1
pacman -S xorg-xinit
pacman -S xorg-xset  # X settings
pacman -S xsel

#=> 2 prepare for X 2
pacman -S hicolor-icon-theme
pacman -S ttf-ubuntu-font-family
pacman -S xautomation  # for mouse middle click
pacman -S xbindkeys  # Xbindkeys
pacman -S xorg-xinput  # for changing libinput (touchpad) settings at runtime
pacman -S xorg-appres
pacman -S xorg-xman

#=> 2 prepare for X 2 AV 0
pacman -S alsa-utils  # AlsaUtils
pacman -S mediainfo
pacman -S pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse wiremix  # PipeWire

#=> 2 prepare for X 2 AV 1 GStreamer
# (after  pipewire-jack) GStreamer Plug-ins
pacman -S gst-libav gst-plugin-pipewire gst-plugins-base gst-plugins-good gst-plugins-ugly

#=> 2 prepare for X 2 for laptops
pacman -S brightnessctl
pacman -S slock
pacman -S xorg-xbacklight

#=> 2 prepare for X 2 login.conf
sed -i 's/^#HandleLidSwitchExternalPower=suspend/HandleLidSwitchExternalPower=ignore/' /etc/systemd/logind.conf
# - allows programs to continue running when lid is closed while laptop is charging

#=> 2 prepare for X 2 updatedb.conf
sudo cp $ABnm/etc/updatedb.conf /etc/updatedb.conf
updatedb

#=> 2 prepare for X 2 xorg.conf.d
xcd="/etc/X11/xorg.conf.d"
[ -d $xcd ] || mkdir $xcd
cp $OSAB/nodes-etc/10-monitor.conf $xcd/10-monitor.conf  # disable DPMS

# #=> 2 save grub.cfg
# gcs="$machLg/boot-grub-grub-pb3.cfg"
# cp /boot/grub/grub.cfg $gcs; chown jo:jo $gcs
# # pb $gcs

#=> 3 finish
echo "now reboot"

