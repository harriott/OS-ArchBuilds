#!/bin/bash
# vim: fdl=1 sw=2:

# https://harriott.github.io/ - Tue 14 Apr 2026

# bash $OSAB/nodes-set/jo-2-whenWM-1.sh
# dependent on  $OSAB

ln -sf $ABjo/configGtk30Settings.ini ~/.config/gtk-3.0/settings.ini
ln -sf $ABjo/music/MPD/mpd.conf ~/.config/mpd/mpd.conf
ln -sf $ABjo/music/MPD/vimpcrc ~/.config/vimpc/vimpcrc
ln -sf $ABjo/wm/pqivrc ~/.config/pqivrc
ln -sf $ABjo/wm/zathurarc ~/.config/zathura/zathurarc

#=> mpv
ln -sf $misc/CP/mpv.conf ~/.config/mpv/mpv.conf

# $misc/GRs/cGRs-needed.sh
ln -sf $cITcc/CP/mpv/show_filename.lua ~/.config/mpv/scripts/show_filename.lua
ln -sf $cITcc/CP/mpv/firequalizer15.lua ~/.config/mpv/scripts/firequalizer15.lua
ln -sf $cITcc/CP/mpv/visualizer.lua ~/.config/mpv/scripts/visualizer.lua
# e -la ~/.config/mpv/scripts

ln -sf $cITcc/CP/mpv-scripts ~/.config/mpv/scripts

# e -la ~/.config/mpv

#=> music_rotate
chmod 755 $ABjo/music/music_rotate.sh
sudo ln -sf $ABjo/music/music_rotate.sh /usr/local/bin/music_rotate
sudo ln -sf $ABjo/music/music_rotate.desktop /usr/share/applications/music_rotate.desktop
# pb /usr/share/applications/music_rotate.desktop

#=> Spacemacs
sudo ln -sf $ABjo/Emacs/spacemacs.desktop /usr/share/applications/spacemacs.desktop
# e -la /usr/share/applications/spacemacs.desktop
chmod 755 $ABjo/Emacs/spacemacs.sh
sudo ln -sf $ABjo/Emacs/spacemacs.sh /usr/local/bin/spacemacs
# pb /usr/local/bin/spacemacs

#=> Thunderbird safely
ln -sf $ABjo/wm/TS/locks.sh ~/Arch/locks.sh
# es ~/Arch/locks.sh
# pb ~/Arch/locks.sh
chmod 755 $ABjo/wm/TS/thunderbird_safely.sh
sudo ln -sf $ABjo/wm/TS/thunderbird_safely.sh /usr/local/bin/thunderbird_safely
# pb /usr/local/bin/thunderbird_safely
sudo ln -sf $ABjo/wm/TS/thunderbird_safely.desktop /usr/share/applications/thunderbird_safely.desktop
# pb /usr/share/applications/thunderbird_safely.desktop

#=> urxvt extensions
[ -d ~/.urxvt ] || mkdir ~/.urxvt
lnd $ABjo/wm/terminal/urxvt-Perls ~/.urxvt/ext
# e -la ~/.urxvt
# r ~/.urxvt

