#!/bin/bash
# vim: sw=2:

# bash $OSAB/bs-3-toWM-0/4-softwares-for_nnn.sh

# trzAUR  rAUR  are defined in $AjB/bashrc-console

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> nnn plugins 0 show
[[ $distro =~ 'Arch' ]] && thunar ~/.config/nnn/plugins &

#=> nnn plugins 1 clear
shopt -s dotglob; [[ -d ~/.config/nnn/plugins ]] && rm -r ~/.config/nnn/plugins/*

#=> nnn plugins 2 get
sh -c "$(curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs)"

#=> nnn plugins 3 put
if [ $host = "sbMb" ]; then
  echo $(date "+%Y%m%d") >> $machLg/terminal/nnn_plugins_updated
else
  echo $(date "+%Y%m%d") >> $machLg/nnn_plugins_updated
fi

