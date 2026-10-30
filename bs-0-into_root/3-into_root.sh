#!/bin/bash
# vim: fdl=1 sw=2:

# $OSAB/bs-0-into_root/3-into_root.sh
# cd /root/onGH/OS-ArchBuilds; git pull
#  then set  host  for  bash bs-0-into_root/3-into_root.sh
#   (source  would risk exit dropping me out of  chroot)

# #=> 0 prepare
# set -v  # prints each statement here, including comments
# mkdir -p ~/.config/nano
# pacman -S acpi avahi clamav cpupower eza fbset iwd ranger sudo tk turbostat
# ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime  # don't  cat  it!
# hwclock --systohc
# sed -i 's/#en_GB.U/en_GB.U/' /etc/locale.gen
# sed -i 's/#fr_FR.U/fr_FR.U/' /etc/locale.gen
# grep '^f' /etc/locale.gen
# locale-gen
# echo 'LANG=fr_FR.UTF-8' > /etc/locale.conf
# cat /etc/locale.conf
# loadkeys fr-latin1
# echo KEYMAP=fr-latin1 > /etc/vconsole.conf
# echo $host > /etc/hostname

#=> 1 get environment
set -e  # quits on error
rA=/root/Arch; [ -d $rA ] || mkdir $rA
archiso=1
source nodes/Bash/export-Arch  # defines  $OSAB
source $OSAB/nodes-set/root-0.sh

#=> systemd-boot
set -v  # prints each statement here, including comments
bootctl install
cp $OSAB/nodes/efi_loader/entries_arch_conf/$host.conf /boot/loader/entries/arch.conf
cp $OSAB/nodes/efi_loader/loader.conf /boot/loader/loader.conf
# passwd

echo; echo 'now  exit; reboot'

