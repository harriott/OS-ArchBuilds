#!/bin/bash
# vim: fdl=1 sw=2:

set -e

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 $ARCHBUILDS
cd $(dirname "${BASH_SOURCE[0]}")
. ../../$(uname -n)/export-machine
. ../../Bash/export-storage
. ../../jo/Bash/export-jo
read -p "\$ARCHBUILDS is $ARCHBUILDS - looks good?"

#=> 1 fonts - all-the-icons.el
for aif in all-the-icons file-icons fontawesome material-design-icons octicons weathericons; do
  sudo ln -sf $GHrUse/emacs/domtronn-all-the-icons.el/fonts/$aif.ttf /usr/share/fonts/EmacsAllTheIcons/$aif.ttf
done
exa -la /usr/share/fonts/EmacsAllTheIcons

# #=> 1 fonts-forArch
# cfA=/usr/share/fonts/copiedForArch
# # . /home/jo/.export-machine
# # . /home/jo/.export-storage
# # . /home/jo/.export-jo
# [[ $cfA ]] && rm -r $cfA; ln -s $cITh/unix-like/linux/fonts-forArch $cfA
# exa -la /usr/share/fonts

# #=> 1 make root symlinks
# ln -sf $ARCHBUILDS/root/bash_profile /root/.bash_profile  # sources root bashrc
#   ln -sf $ARCHBUILDS/root/bashrc /root/.bashrc  # sources bashrc-generic

# ln -sf $ARCHBUILDS/Bash/GNUReadline-inputrc /root/.inputrc

# ln -sf $machBld/export-machine /root/.export-machine
#   ln -sf $ARCHBUILDS/Bash/export-storage /root/.export-storage

# ln -sf $ARCHBUILDS/root/nanorc ~/.config/nano/nanorc

# ln -sf $ARCHBUILDS/root/backup/rsyncBackup.sh /root/rsyncBackup.sh

# ln -sf $tmx/tmux.conf ~/.tmux.conf

# #=> 2 list root symlinks
# find /root -type l -ls  # doesn't show broken

# #=> 2 ranger
# sudo ln -sf $ABjo/ranger /root/.config/ranger
# exa -la /root/.config
