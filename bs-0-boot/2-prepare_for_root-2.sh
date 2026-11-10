#!/bin/bash
# vim: fdl=1 sw=2:

# $OSAB/bs-0-boot/2-prepare_for_root-2.sh
#  bash this (source  would risk exit dropping me out of  chroot/jo)

#=> 0 get environment
set -e  # quits on error
rA=/root/Arch; [ -d $rA ] || mkdir $rA
source nodes/Bash/export-Arch  # defines  $OSAB  and some dependents
source $ABno-set/root.sh
source $ABno-set/cli.sh

#=> 1 systemd-boot
source ~/.export-Arch
set -v  # prints each statement here, including comments
bootctl install
cp $ABnm/etc/fstab /etc/fstab
cp $ABno/efi_loader/entries_arch_conf/$host.conf /boot/loader/entries/arch.conf
cp $ABno/efi_loader/loader.conf /boot/loader/loader.conf

