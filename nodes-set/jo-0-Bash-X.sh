#!/bin/bash
# vim: fdl=1 sw=2:

# source $OSAB/nodes-set/jo-0-Bash-X.sh

set -v  # prints each statement here, including comments

#=> Bash
# sort these lists by last use of "~":  :sort /,*\~/

ln -sf $AjB/bash_profile                                   ~/.bash_profile
if [[ $host =~ HPEB840G3 ]]; then
  ln -sf $ABno/m-HPEB840G3x/jo/bashrc                      ~/.bashrc
else
  ln -sf $ABnm/jo/Bash/bashrc                              ~/.bashrc
fi
ln -sf $ABjo/wm/term/bashrc-AlNvim                         ~/.bashrc-AlNvim
ln -sf $AjB/bashrc-console                                 ~/.bashrc-console
[ -d ~/Arch ] || mkdir ~/Arch; ln -sf $AjB/bash_history.sh ~/Arch/bash_history.sh

es ~/.bash* ~/Arch/bash_history.sh

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
es ~/.Xresources* ~/.xbindkeysrc ~/.xinitrc ~/.xmodmap

