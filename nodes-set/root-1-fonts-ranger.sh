#!/bin/bash
# vim: sw=2:

# sl > root pw for  source $OSAB/nodes-set/root-1-fonts-ranger.sh
#  lnd  defined in  $OSAB/Bash/bashrc-generic

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 1 fonts - all-the-icons.el
[ -d /usr/share/fonts/EmacsAllTheIcons ] || mkdir /usr/share/fonts/EmacsAllTheIcons
for aif in all-the-icons file-icons fontawesome material-design-icons octicons weathericons; do
  sudo ln -sf $ITccl/CP/Emacs-domtronn-all-the-icons.el/fonts/$aif.ttf /usr/share/fonts/EmacsAllTheIcons/$aif.ttf
  # $misc/GRs/needed.sh
done
eza -la /usr/share/fonts/EmacsAllTheIcons

#=> 1 fonts 0 install
lnd $ITccl/unix-linux-forArch-fonts /usr/share/fonts/copiedForArch
eza -la /usr/share/fonts

# #=> 1 fonts 1 remove
# rm -r /usr/share/fonts/copiedForArch
# # kills nice icons in  eza  in new  Alacritty  instances

#=> 1 ranger
# no file preview
lnd $OSL/nodes/terminal-ranger ~/.config/ranger
eza -adl ~/.config/ranger

