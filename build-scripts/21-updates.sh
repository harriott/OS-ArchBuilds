#!/bin/bash
# vim: fdl=1 sw=2:

# #=> 0 go slow
# set -v  # prints each statement here, including comments
# trap read debug  # puts a read request after each executable line

# #=> 1 updates
# sudo pacman -Syu
# # check  nanorc  if  nano  updated & reboot if kernel updated !
# sudo find /etc -type f -name "*pacnew"
# true
# # "^ ^ ^ ^ ^ ^ - pacnews ?"
# true

#=> 2 go fast
trap - debug  # turn off debug
set +v

# #=> 3 /var/cache/pacman/pkg
# trap - debug  # first turn off debug
# if [ $machine = "LIP120s81A4" ]; then
#   sudo pacman -Scc  # empty completely
# else
#   sudo paccache -r  # reduce to last 3 versions
# fi
# trap read debug

#=> 4 AURs
if ( pacman -Qs auracle > /dev/null 2>&1) ; then
  auracle sync
fi

