#!/bin/bash
# vim: fdl=1 sw=2:

# $OSAB/bs-0-in_root/2-pacstrap_to_root.sh

set -v  # prints each statement here, including comments

#=> 0 prepare
mkdir -p ~/.config/nano
pacman -S acpi avahi clamav cpupower fbset iwd sudo tk turbostat
ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime  # don't  cat  it!
hwclock --systohc
sed -i 's/#fr_FR.U/fr_FR.U/' /etc/locale.gen
grep '^f' /etc/locale.gen
locale-gen
echo 'LANG=fr_FR.UTF-8' > /etc/locale.conf
cat /etc/locale.conf
loadkeys fr-latin1
echo KEYMAP=fr-latin1 > /etc/vconsole.conf
echo HPEB840G38 > /etc/hostname

#=> 1 get environment
cd /root/onGH/OS-ArchBuilds; git pull
source nodes-Bash/export-Arch
source nodes-set/jo-0-Bash-X.sh
echo; echo 'now  reboot'

# cp nodes/efi_loader_loader.conf /usr/share/systemd/bootctl/loader.conf

