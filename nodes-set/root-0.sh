#!/bin/bash
# vim: fdl=1 sw=2:

# su > root pw for  source $OSAB/nodes-set/root-0.sh
#  lnd  defined in  $OSAB/nodes-Bash/bashrc-generic

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 $OSAB
read -p "\$OSAB  is  $OSAB - looks good?"

#=> 0 Bash
ln -sf $OSAB/nodes-root/bash_profile ~/.bash_profile
ln -sf $OSAB/nodes-root/bashrc ~/.bashrc

#=> 1 root symlinks 0 shell
ln -sf $machBld/Bash_start ~/.start
  ln -sf $OSAB/nodes-Bash/export-Arch ~/.export-Arch
    ln -sf $OSL/nodes/jo/export ~/.export-linux
ln -sf $OSAB/nodes-root/bash_history.sh ~/bash_history.sh
ln -sf $OSL/nodes/GNUReadline-inputrc ~/.inputrc

#=> 1 root symlinks 1 more
ln -sf $OSAB/nodes-root/nanorc ~/.config/nano/nanorc
ln -sf $OSL/nodes/terminal-tmux/tmux.conf ~/.tmux.conf

#=> 1 root symlinks 2 show
eza -la /root
eza -la /root/.config/nano

