#!/bin/bash
# vim: fdl=2 sw=2:

# source $ABno-set/jo-0-Bash.sh

#=> Bash
# sort these lists by last use of "~":  :sort /,*\~/

# ln -sf $AjB/bash_profile              ~/.bash_profile
ln -sf $AjB/profile                   ~/.bp_everywhere
ln -sf $AjB/profile-X                 ~/.bash_profile
  # - sources  $ABno/Bash/bashrc-generic, which aliases  eza
if [[ $host =~ HPEB840G3 ]]; then
  ln -sf $ABno/m-HPEB840G3x/jo/bashrc ~/.bashrc
  if [[ $host =~ HPEB840G37 ]]; then
    ln -sf $AjB/profile-KDE           ~/.bash_profile
  fi
else
  ln -sf $ABnm/jo/Bash/bashrc         ~/.bashrc
fi
ln -sf $ABjo/wm/term/bashrc-AlNvim    ~/.bashrc-AlNvim
ln -sf $AjB/bashrc-console            ~/.bashrc-console

#==> 0 Bash history
[ -d ~/Arch ] || mkdir ~/Arch
ln -sf $AjB/bash_history.sh ~/Arch/bash_history.sh

#==> 1 checks
eza -al ~/.bash* ~/.bp_everywhere ~/Arch/bash_history.sh

