#!/bin/bash
# vim: fdl=1 sw=2:

# bash $OSAB/bs-0-into_root/2-prepare_for_root-1.sh
#  (source  would risk exit dropping me out of  chroot)

#=> host, locale, needed packages, time
set -v  # prints each statement here, including comments
timedatectl set-timezone Europe/Paris
pacman -S acpi avahi clamav cpupower eza fbset hdparm iwd ranger sudo tk turbostat
fbset -i
ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime  # don't  cat  it!
hwclock --systohc
sed -i 's/#en_GB.U/en_GB.U/' /etc/locale.gen
sed -i 's/#fr_FR.U/fr_FR.U/' /etc/locale.gen
grep '^f' /etc/locale.gen
locale-gen
echo 'LANG=fr_FR.UTF-8' > /etc/locale.conf
cat /etc/locale.conf
loadkeys fr-latin1
echo KEYMAP=fr-latin1 > /etc/vconsole.conf
echo HPEB840G37 > /etc/hostname

