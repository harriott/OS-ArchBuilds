#!/bin/bash
# vim: set fdl=1:

# bash $OSAB/bs-2-into_X/6-prepare_forSoftwares.sh

# trzAURd  is defined in $AjB/bashrc-console

set -ev
# trap read debug  # puts a read request after each executable line

# #=> 0 Dropbox public key
# gpg --keyserver keyserver.ubuntu.com --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

# #=> 0 pgpdump
# sudo pacman -S pgpdump

# #=> 0 systemd-resolved
# # Can't recall the advantage of this...
# sudo systemctl enable systemd-resolved.service --now
# systemctl status systemd-resolved.service

# #=> 1 Alacritty
# sudo pacman -S alacritty

# #=> 2 dalance/pipecolor
# cargo install pipecolor  # but it's not available...

