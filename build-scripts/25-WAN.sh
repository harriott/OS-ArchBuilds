#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 8192eu 0 blacklist rtl8xxxu
# echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf

#=> 8192eu 1 remove blacklist
sudo rm /etc/modprobe.d/rtl8xxxu.conf

#=> systemd-resolved
sudo systemctl enable systemd-resolved.service --now

#=> grab default sshd_config
sudo cp /etc/ssh/sshd_config $MACHINE/etc/defaults/kc1-sshd_config
sudo chown jo:jo $MACHINE/etc/defaults/kc1-sshd_config

