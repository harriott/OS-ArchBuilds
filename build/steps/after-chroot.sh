#!/bin/bash
# vim: set et tw=0:

# bash -x <thisfile>.sh

# Time zone
# ls -l /etc/localtime  shows it's a symlink to  ../usr/share/zoneinfo/UTC
rm /etc/localtime
ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime
# (don't cat this!)
hwclock --systohc
