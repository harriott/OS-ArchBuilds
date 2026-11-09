#!/bin/bash
# vim: fdl=1 sw=2:

# sl > root pw for  source $ABno-set/root-0.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 $OSAB
read -p "\$OSAB  is  $OSAB - looks good?"

#=> 0 Bash
ln -sf $ABno/root/bash_profile    ~/.bash_profile
  # - sources  $ABnm/Bash_start, wherein  $user_jo, $myDrA  are set
ln -sf $ABno/root/bashrc          ~/.bashrc
ln -sf $ABno/root/bash_history.sh ~/bash_history.sh

#=> 1 root symlinks 1 more
cn="$HOME/.config/nano"; [ -d $cn ] || mkdir -p $cn
ln -sf $ABno/root/nanorc ~/.config/nano/nanorc

#=> 1 root symlinks 2 show
eza -la /root/.bash* /root/bash* /root/.config/nano

