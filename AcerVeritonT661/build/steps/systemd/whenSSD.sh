#!/bin/bash
# vim: set et tw=0:

# bash -x <thisfile>.sh

# framebuffer
pacman -S fbset tig
# fbset -i   reports  mode 1366x768

# fstrim
# systemctl status fstrim.timer  reports it to be disabled
systemctl enable fstrim.timer
# "Created symlink /etc/systemd/system/timers.target.wants/fstrim.timer → /usr/lib/systemd/system/fstrim.timer"
# reboot > log in as "root"  reveals it to be  active

# Swap
# cat /sys/fs/cgroup/memory/memory.swappiness   reports  60
# ls /etc/sysctl.d   shows it to empty
echo "vm.swappiness=10" > /etc/sysctl.d/99-sysctl.conf
# reboot > log in as "root"  reveals it to be  active

# User jo
useradd -m jo
