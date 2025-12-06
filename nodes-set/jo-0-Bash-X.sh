#!/bin/bash
# vim: sw=2:

# build script
# source $OSAB/nodes-set/jo-0-Bash-X.sh

#=> Bash 0 set
# sort this list by last use of "~":  :sort /,*\~/

ln -sf $AjB/bash_profile                     ~/.bash_profile
ln -sf $machBld/jo/Bash/bashrc               ~/.bashrc
ln -sf $Openbox/bashrc_for_Alacritty-nvim.sh ~/.bashrc-An
ln -sf $AjB/bashrc-console                   ~/.bashrc-console
ln -sf $OSAB/nodes-Bash/bashrc-generic       ~/.bashrc-generic  # e -l ~/.bashrc-generic
ln -sf $OSL/nodes/jo/export                  ~/.export-linux
ln -sf $machBld/export-machine               ~/.export-machine
ln -sf $OSAB/nodes-Bash/export-Arch          ~/.export-Arch  # e -l ~/.export-Arch
ln -sf $OSL/nodes/GNUReadline-inputrc        ~/.inputrc  # e -l ~/.inputrc
ln -sf $AjB/bash_history.sh                  ~/Arch/bash_history.sh

# #=> Bash 1 check
# e -la ~/.bash_profile ~/.bashrc ~/.bashrc-An ~/.bashrc-console ~/.bashrc-generic ~/.export-jo ~/.export-machine ~/.export-storage ~/.inputrc ~/Arch/bash_history.sh

# #=> Bash 2 remove
# Rm ~/.bash_profile ~/.bashrc ~/.bashrc-An ~/.bashrc-console ~/.bashrc-generic ~/.export-jo ~/.export-machine ~/.export-storage ~/.inputrc ~/Arch/bash_history.sh

#=> X 0 set
ln -sf $ABjo/wm/Xresources/Xresources                       ~/.Xresources
  ln -sf $ABjo/wm/Xresources/fontUM                         ~/.Xresources-font
  [[ $myDrA == 1 ]] && ln -sf $ABjo/wm/Xresources/fontNF    ~/.Xresources-font
  ln -sf $ABjo/wm/Xresources/colorschemes/LukeSmith-gruvbox ~/.Xresources-LukeSmith-gruvbox
ln -sf $ABjo/xbindkeysrc                                    ~/.xbindkeysrc  # mouse wheel
ln -sf $ABjo/xinitrcs/xfce                                  ~/.xinitrc
# ln -sf $ABjo/xinitrcs/openbox                               ~/.xinitrc
# ln -sf $ABjo/xinitrcs/awesome                               ~/.xinitrc
                                                       # es ~/.xinitrc

#=> X 1 check
e -la ~/.Xresources ~/.Xresources-font ~/.Xresources-LukeSmith-gruvbox ~/.xbindkeysrc ~/.xinitrc

# #=> X 2 remove
# rm ~/.Xresources ~/.Xresources-font ~/.Xresources-LukeSmith-gruvbox ~/.xbindkeysrc ~/.xinitrc

