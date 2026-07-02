#!/bin/bash
# vim: fdl=1 sw=2:

# bash $OSAB/nodes-set/plugins_for_nnn.sh

set -ev  # quits on error, prints each statement here, including comments

cnp="$HOME/.config/nnn/plugins"

#=> nnn plugins 0 show
[[ $distro =~ 'Arch' ]] && thunar $cnp &

#=> nnn plugins 1 clear
shopt -s dotglob; [[ -d $cnp ]] && rm -r $cnp/*

#=> nnn plugins 2 get
sh -c "$(curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs)"

#=> nnn plugins 3 log
if [ $host = "sbMb" ]; then
  echo $(date "+%Y%m%d") >> $machLg/terminal/nnn_plugins_updated
  # - check against  https://github.com/jarun/nnn/tree/master/plugins
else
  echo $(date "+%Y%m%d") >> $machLg/nnn_plugins_updated
fi

