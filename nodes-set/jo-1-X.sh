#!/bin/bash
# vim: fdl=2 sw=2:

# source $ABno-set/jo-1-X.sh

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

