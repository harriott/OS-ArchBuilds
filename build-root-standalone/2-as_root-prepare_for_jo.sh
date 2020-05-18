#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# to be sourced from a parent build script

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 internet check
systemctl status NetworkManager.service
true
ping -c 3 8.8.8.8

# #=> 1 after Grub
# # check local time correction
# timedatectl status

# # framebuffer, Sudo & Tig
# pacman -S fbset sudo tig
# # display all available frame buffer information
# fbset -i

# #=> 1 some Packages
# # meson, for auracle later
# pacman -S meson

# # NTFS-3G
# pacman -S ntfs-3g

#=> 1 swappinness
# check that the default is 60
cat /sys/fs/cgroup/memory/memory.swappiness
# show that  /etc/sysctl.d  is empty
ls /etc/sysctl.d
# fix lower value, which will become effective after reboot
echo "vm.swappiness=10" > /etc/sysctl.d/99-sysctl.conf
ls /etc/sysctl.d

#=> 1 Users
# activate wheel group
sed -i '0,/%wheel/ s/^# %wheel/%wheel/' /etc/sudoers
grep wheel /etc/sudoers
# check that  /etc/sudoers  parses OK
visudo -c -f /etc/sudoers

# User jo, creating the home directory and adding to group wheel
useradd -m -G wheel jo
until passwd jo; do echo "try again"; done

#=> 2 end
# you're ready to reboot and login to jo

