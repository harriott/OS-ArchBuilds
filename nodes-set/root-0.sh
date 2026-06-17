#!/bin/bash
# vim: fdl=1 sw=2:

# su > root pw for  source $OSAB/nodes-set/root-0.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 $OSAB
read -p "\$OSAB  is  $OSAB - looks good?"

#=> 0 Bash
ln -sf $OSAB/nodes-root/bash_profile ~/.bash_profile
ln -sf $OSAB/nodes-root/bashrc       ~/.bashrc
ln -sf $OSAB/nodes-root/bash_history.sh       ~/bash_history.sh

#=> 1 root symlinks 1 more
ln -sf $OSAB/nodes-root/nanorc            ~/.config/nano/nanorc

#=> 1 root symlinks 2 show
eza -la /root
eza -la /root/.config/nano

