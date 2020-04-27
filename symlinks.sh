#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash -x <thisfile>.sh
#  for some reason, the sudo's need to be written in this file (instead of sudo bash...)

# To inspect symlinks:   find ~ -path '*/.virtualenvs' -prune -o -type l -ls

#=> logged in as jo, in X - Bash generics
# ln -sf $ARCHBUILDS/jo/Bash/bash_profile   ~/.bash_profile
# sudo ln -sf $ARCHBUILDS/jo/Bash/bashrc-console ~/.bashrc-console
# sudo ln -sf $ARCHBUILDS/jo/Bash/bashrc-files   ~/.bashrc-files
sudo ln -sf $ARCHBUILDS/jo/bash_history.sh ~/Arch/bash_history.sh
# sudo ln -sf $MACHINE/jo/bashrc /home/jo/.bashrc
# sudo ln -sf $MACHINE/jo/xinitrc /home/jo/.xinitrc

