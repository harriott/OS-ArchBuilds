#!/bin/bash
# vim: fdl=1 sw=2:

# $OSAB/bs-0-into_root/3-into_root.sh
# cd /root/onGH/OS-ArchBuilds; git pull
#  then set  host  for  . bs-0-into_root/3-into_root.sh

#=> 0 prepare
set -v  # prints each statement here, including comments
mkdir -p ~/.config/nano
pacman -S acpi avahi clamav cpupower eza fbset iwd ranger sudo tk turbostat
ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime  # don't  cat  it!
hwclock --systohc
sed -i 's/#fr_FR.U/fr_FR.U/' /etc/locale.gen
grep '^f' /etc/locale.gen
locale-gen
echo 'LANG=fr_FR.UTF-8' > /etc/locale.conf
cat /etc/locale.conf
loadkeys fr-latin1
echo KEYMAP=fr-latin1 > /etc/vconsole.conf
echo $host > /etc/hostname

#=> 1 get environment
set -v  # prints each statement here, including comments
mkdir /root/Arch
archiso=1
source nodes-Bash/export-Arch
source nodes-set/root-0.sh

#=> systemd-boot
bootctl install
cp nodes-efi_loader/entries_arch_conf/$host.conf /boot/loader/entries/arch.conf
cp nodes-efi_loader/loader.conf /boot/loader/loader.conf
passwd

echo; echo 'now  exit; reboot'

