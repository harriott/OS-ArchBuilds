#!/bin/bash
# vim: fdm=expr fdl=1 ft=shbuild:

# bash <thisfile>.sh  to fix my Openbox install

#=> symlinks for softares in my Openbox build

ln -sf $Openbox/Xresources/Xresources                  ~/.Xresources
ln -sf $Openbox/cmus-rc.conf                           ~/.config/cmus/rc
ln -sf $Openbox/dunstrc                                ~/.config/dunst/dunstrc
ln -sf $Openbox/zathurarc                              ~/.config/zathura/zathurarc
ln -sf $Openbox/cmus_notify.sh                         ~/.local/share/cmus_notify.sh
ln -sf $tmux/tmux.conf                                 ~/.tmux.conf

rm -r ~/.urxvt/ext; ln -s $Openbox/urxvt/Perls                      ~/.urxvt/ext

