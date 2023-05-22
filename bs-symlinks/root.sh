#!/bin/bash
# vim: sw=2:

# bash $bSc/symlinks/root.sh

set -e

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 $OSAB
cd $(dirname "${BASH_SOURCE[0]}")
. ../../$(uname -n)/export-machine
. ../../Bash/export-storage
. ../../jo/Bash/export-jo
read -p "\$OSAB is $OSAB - looks good?"

# #=> 1 fonts - all-the-icons.el
# [ -d /usr/share/fonts/EmacsAllTheIcons ] || mkdir /usr/share/fonts/EmacsAllTheIcons
# for aif in all-the-icons file-icons fontawesome material-design-icons octicons weathericons; do
#   sudo ln -sf $GHrUse/emacs/domtronn-all-the-icons.el/fonts/$aif.ttf /usr/share/fonts/EmacsAllTheIcons/$aif.ttf
# done
# exa -la /usr/share/fonts/EmacsAllTheIcons

# #=> 1 fonts-forArch
# cfA=/usr/share/fonts/copiedForArch
# [ -d $cfA ] && rm -r $cfA; ln -s $cITh/unix-like/linux/fonts-forArch $cfA
# exa -la /usr/share/fonts

# #=> 1 make root symlinks
# ln -sf $OSAB/root/bash_profile /root/.bash_profile  # sources root bashrc
#   ln -sf $OSAB/root/bashrc /root/.bashrc  # sources bashrc-generic

# ln -sf $OSAB/Bash/GNUReadline-inputrc /root/.inputrc

# ln -sf $machBld/export-machine /root/.export-machine
#   ln -sf $OSAB/Bash/export-storage /root/.export-storage

# ln -sf $OSAB/root/nanorc ~/.config/nano/nanorc

# ln -sf $OSAB/root/backup/rsyncBackup.sh /root/rsyncBackup.sh

# ln -sf $tmx/tmux.conf ~/.tmux.conf

#=> 2 list root symlinks
exa -la /root
# find /root -type l -ls  # doesn't show broken

#=> 2 ranger
sudo ln -sf $ABjo/ranger /root/.config/ranger
exa -la /root/.config

