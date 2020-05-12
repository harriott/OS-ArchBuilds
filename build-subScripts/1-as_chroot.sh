#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# to be sourced from a parent build script

# #=> 0 install continued as chroot

# #==> 0 system settings
# # time zone
# ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime

# # system clock
# timedatectl set-ntp true
# timedatectl status
# # doesn't show local correction

# # hardware clock
# hwclock --systohc

# # locale
# sed -i 's/^#en_GB.UTF-8/en_GB.UTF-8/' /etc/locale.gen
# sed -i 's/^#en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen
# sed -i 's/^#fr_FR.UTF-8/fr_FR.UTF-8/' /etc/locale.gen
# cat /etc/locale.gen | grep -v '^#'
# locale-gen
# # cat /etc/locale.conf   shows it ain't there
# echo LANG=fr_FR.UTF-8 > /etc/locale.conf
# # cat /etc/vconsole.conf  shows it ain't there
# echo KEYMAP=fr > /etc/vconsole.conf

# #==> 1 bootloader
# # Grub, Microcode, Network Time Protocol
# pacman -S grub intel-ucode ntp
# # lsblk -f  indicates sda
# grub-install --target=i386-pc /dev/sda
# # re-generate  grub.cfg
# grub-mkconfig -o /boot/grub/grub.cfg

# # udisks
# pacman -S udisks2

# # root password
# passwd

# # quit chroot
# exit

# #==> 2 after Grub
# # check local time correction
# timedatectl status

# # framebuffer, Sudo & Tig
# pacman -S fbset sudo tig
# fbset -i

# # Numlock
# mkdir /etc/systemd/system/getty@.service.d
# echo [Service] > /etc/systemd/system/getty@.service.d/activate-numlock.conf
# echo "ExecStartPre=/bin/sh -c 'setleds +num < /dev/%I'" >> /etc/systemd/system/getty@.service.d/activate-numlock.conf
# cat /etc/systemd/system/getty@.service.d/activate-numlock.conf

# # swappinness
# # check that the default is 60
# cat /sys/fs/cgroup/memory/memory.swappiness
# # show that  /etc/sysctl.d  is empty
# # fix lower value, which will become effective after reboot
# echo "vm.swappiness=10" > /etc/sysctl.d/99-sysctl.conf
# ls /etc/sysctl.d

# #==> 3 some Packages
# pacman -S reflector
# cd /etc/pacman.d
# reflector --country France --age 12 --protocol https --sort rate --save mirrorlist
# cat mirrorlist
# pacman -Syyuu

# #===> some Packages
# # meson, for auracle later
# pacman -S meson

# # NTFS-3G
# pacman -S ntfs-3g

# # Pacmatic
# pacman -S pacmatic python-html2text

# #==> 4 Users
# # activate wheel group
# sed -i '0,/%wheel/ s/^# %wheel/%wheel/' /etc/sudoers
# grep wheel /etc/sudoers
# # check that  /etc/sudoers  parses OK
# visudo -c -f /etc/sudoers

# # User jo, creating the home directory and adding to group wheel
# useradd -m -G wheel jo
# until passwd jo; do echo "try again"; done

