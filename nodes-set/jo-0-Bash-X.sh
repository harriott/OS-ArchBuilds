#!/bin/bash
# vim: fdl=1 sw=2:

# source $OSAB/nodes-set/jo-0-Bash-X.sh

#=> Bash
# sort these lists by last use of "~":  :sort /,*\~/

ln -sf $AjB/bash_profile                     ~/.bash_profile
ln -sf $machBld/jo/Bash/bashrc               ~/.bashrc
ln -sf $Openbox/bashrc_for_Alacritty-nvim.sh ~/.bashrc-An
ln -sf $AjB/bashrc-console                   ~/.bashrc-console
ln -sf $OSAB/nodes-Bash/bashrc-generic       ~/.bashrc-generic
ln -sf $OSL/nodes/GNUReadline-inputrc        ~/.inputrc
ln -sf $AjB/bash_history.sh                  ~/Arch/bash_history.sh

ln -sf $OSAB/nodes-Bash/export-Arch          ~/.export-Arch
ln -sf $OSL/nodes/jo/export                  ~/.export-linux
ln -sf $machBld/Bash_start                   ~/.start

# e -la ~/.bash* ~/.export-* ~/.inputrc ~/.start ~/Arch/bash_history.sh

#=> X
ln -sf $ABjo/wm/Xresources/Xresources                       ~/.Xresources
  ln -sf $ABjo/wm/Xresources/fontUM                         ~/.Xresources-font
  [[ $myDrA == 1 ]] && ln -sf $ABjo/wm/Xresources/fontNF    ~/.Xresources-font
  ln -sf $ABjo/wm/Xresources/colorschemes/LukeSmith-gruvbox ~/.Xresources-LukeSmith-gruvbox
ln -sf $ABjo/xbindkeysrc                                    ~/.xbindkeysrc  # mouse wheel
ln -sf $ABjo/xinitrcs/xfce                                  ~/.xinitrc
# ln -sf $ABjo/xinitrcs/openbox                               ~/.xinitrc
# ln -sf $ABjo/xinitrcs/awesome                               ~/.xinitrc
# e -la ~/.Xresources* ~/.xbindkeysrc ~/.xinitrc

