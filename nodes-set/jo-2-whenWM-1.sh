#!/bin/bash
# vim: fdl=1 sw=2:

# bash $OSAB/nodes-set/jo-2-whenWM-1.sh
# dependent on  $OSAB

ln -sf $ABjo/configGtk30Settings.ini ~/.config/gtk-3.0/settings.ini
ln -sf $misc/CP/mpv.conf ~/.config/mpv/mpv.conf
ln -sf $ITscc/linux/mfcc64-mpv-scripts/visualizer.lua ~/.config/mpv/scripts/visualizer.lua
# e -la ~/.config/mpv/scripts/visualizer.lua
ln -sf $ABjo/music/MPD/mpd.conf ~/.mpd/mpd.conf
ln -sf $ABjo/music/MPD/vimpcrc ~/.config/vimpc/vimpcrc
ln -sf $ABjo/wm/pqivrc ~/.config/pqivrc
ln -sf $ABjo/wm/zathurarc ~/.config/zathura/zathurarc

#=> Spacemacs
sudo ln -sf $ABjo/Emacs/spacemacs.desktop /usr/share/applications/spacemacs.desktop
# e -la /usr/share/applications/spacemacs.desktop
sudo ln -sf $ABjo/Emacs/spacemacs.sh /usr/local/bin/spacemacs
# pb /usr/local/bin/spacemacs

#=> Thunderbird safely
ln -sf $ABjo/wm/TS/locks.sh ~/Arch/locks.sh
# es ~/Arch/locks.sh
# pb ~/Arch/locks.sh
sudo ln -sf $ABjo/wm/TS/thunderbird_safely.sh /usr/local/bin/thunderbird_safely
# pb /usr/local/bin/thunderbird_safely
sudo ln -sf $ABjo/wm/TS/thunderbird_safely.desktop /usr/share/applications/thunderbird_safely.desktop
# pb /usr/share/applications/thunderbird_safely.desktop

#=> urxvt extensions
[ -d ~/.urxvt ] || mkdir ~/.urxvt
# r $ABjo/wm/urxvt/Perls
lnd $ABjo/wm/urxvt/Perls ~/.urxvt/ext
# rm -r ~/.urxvt/ext; ln -s $ABjo/wm/urxvt/Perls ~/.urxvt/ext
# e -la ~/.urxvt
# r ~/.urxvt

