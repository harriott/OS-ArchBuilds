#!/bin/bash
# vim: fdl=2 sw=2:

# source $OSAB/nodes-set/jo-0-Bash-X.sh

set -v  # prints each statement here, including comments

#=> 0 get environment
rA=/root/Arch; [ -d $rA ] || mkdir $rA
archiso=1
source nodes/Bash/export-Arch  # defines  $OSAB
source $OSAB/nodes-set/root-0.sh
source $OSAB/nodes-set/shell.sh

#=> Bash
# sort these lists by last use of "~":  :sort /,*\~/

ln -sf $AjB/bash_profile              ~/.bash_profile
  # - sources  $ABno/Bash/bashrc-generic, which aliases  eza
if [[ $host =~ HPEB840G3 ]]; then
  ln -sf $ABno/m-HPEB840G3x/jo/bashrc ~/.bashrc
else
  ln -sf $ABnm/jo/Bash/bashrc         ~/.bashrc
fi
ln -sf $ABjo/wm/term/bashrc-AlNvim    ~/.bashrc-AlNvim
ln -sf $AjB/bashrc-console            ~/.bashrc-console

#==> Bash history
[ -d ~/Arch ] || mkdir ~/Arch
[[ -d $machLg/jo ]] || mkdir $machLg/jo
[[ -d $machLg/root ]] || mkdir $machLg/root
ln -sf $AjB/bash_history.sh ~/Arch/bash_history.sh

eza -al ~/.bash* ~/Arch/bash_history.sh

#=> X
ln -sf $ABjo/wm/Xresources/Xresources                                                   ~/.Xresources
  ln -sf $ABjo/wm/Xresources/fontUM                                                     ~/.Xresources-font
  [[ $myDrA == 1 ]] && ln -sf $ABjo/wm/Xresources/fontNF                                ~/.Xresources-font
  if [[ $myDrA == 1 ]]; then
    ln -sf $ABjo/wm/Xresources/fontNF                                                   ~/.Xresources-font
    [[ $host =~ HPEB840G3(7|8) ]] && ln -sf $ABno/m-HPEB840G3x/hi-jo/Xresources_fontNF  ~/.Xresources-font
  fi
  ln -sf $ABjo/wm/Xresources/colorschemes/LukeSmith-gruvbox                             ~/.Xresources-LukeSmith-gruvbox
ln -sf $ABjo/xbindkeysrc                                                                ~/.xbindkeysrc  # mouse wheel
ln -sf $ABjo/xinitrcs/xfce                                                              ~/.xinitrc
# ln -sf $ABjo/xinitrcs/openbox                                                           ~/.xinitrc
ln -sf $ABjo/xmodmapAZERTY                                                              ~/.xmodmap
eza -al ~/.Xresources* ~/.xbindkeysrc ~/.xinitrc ~/.xmodmap

