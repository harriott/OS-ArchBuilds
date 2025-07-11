#!/bin/bash
# vim: sw=2:

# su > root pw for  source $OSAB/nodes/set/root.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 $OSAB
cd $(dirname "${BASH_SOURCE[0]}")
. ../mb-$(uname -n)/export-machine
. ../nodes/Bash/export-storage
. ../../OS-Linux/nodes/jo/export
read -p "\$OSAB  is  $OSAB - looks good?"

#=> 1 fonts - all-the-icons.el
[ -d /usr/share/fonts/EmacsAllTheIcons ] || mkdir /usr/share/fonts/EmacsAllTheIcons
for aif in all-the-icons file-icons fontawesome material-design-icons octicons weathericons; do
  sudo ln -sf $ITscc/CP/Emacs-domtronn-all-the-icons.el/fonts/$aif.ttf /usr/share/fonts/EmacsAllTheIcons/$aif.ttf
  # $misc/GRs/needed.sh
done
eza -la /usr/share/fonts/EmacsAllTheIcons

#=> 1 fonts 0 install
lnd $ITscc/unix-linux-forArch-fonts /usr/share/fonts/copiedForArch
eza -la /usr/share/fonts

# #=> 1 fonts 0 remove
# rm -r /usr/share/fonts/copiedForArch
# # kills nice icons in  eza  in new  Alacritty  instances

#=> 1 make root symlinks
ln -sf $machBld/export-machine /root/.export-machine
  ln -sf $OSAB/nodes-Bash/export-storage /root/.export-storage
ln -sf $OSAB/nodes-root/nanorc ~/.config/nano/nanorc
ln -sf $OSAB/nodes-root/backup/rsyncBackup.sh /root/rsyncBackup.sh
ln -sf $OSL/nodes/GNUReadline-inputrc /root/.inputrc
ln -sf $OSL/nodes/terminal-tmux/tmux.conf ~/.tmux.conf

# eza -la ~

#=> 2 list root symlinks
eza -la /root
# find /root -type l -ls  # doesn't show broken
eza -la /root/.config/nano

#=> 2 ranger
lnd $OSL/nodes/terminal-ranger ~/.config/ranger
e -adl ~/.config/ranger

