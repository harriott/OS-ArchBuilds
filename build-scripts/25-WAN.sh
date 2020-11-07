#!/bin/bash
# vim: fdm=expr ft=sh.shfold:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gctm is defined in $ARCHBUILDS/jo/Bash/bashrc-console
rAUR () { [[ -d $1 ]] && sudo rm -r $1; }

# #=> 8192eu 1 blacklist rtl8xxxu
# echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf

#=> systemd-resolved
sudo systemctl enable systemd-resolved.service --now

