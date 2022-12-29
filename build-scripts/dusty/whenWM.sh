#!/bin/bash

# bash $bSc/dusty/whenWM.sh

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

#=> 0 check $OSAB
read -p "\$OSAB is $OSAB - looks good?"

#=> 0 handlr-bin 0 remove
sudo pacman -Rs xdg-utils-handlr
sudo pacman -Rs handlr-bin

# #=> 0 nodejs-ffmpeg-concat
# gAUR nodejs-ffmpeg-concat
# nvim PKGBUILD
# makepkg -sic

# #=> 0 npm ffmpeg-concat
# npm install -g ffmpeg-concat

#=> 0 qt5-styleplugins 0 install
# for qt5ct - allows fix of narrow fonts in XnViewMP
gAUR qt5-styleplugins
nvim -c "silent! /qtstyleplugins" PKGBUILD
makepkg -sic  # takes a long time

# #=> 0 qt5-styleplugins 1 remove
# sudo pacman -Rs qt5-styleplugins

# #=> 0 sbMb dual monitors 0
# r /etc/X11/xorg.conf.d

# #=> 0 sbMb dual monitors 1
# sudo cp $machBld/etc/20-monitor.conf /etc/X11/xorg.conf.d/20-monitor.conf

# #=> 0 sbMb dual monitors 2
# sudo rm /etc/X11/xorg.conf.d/20-monitor.conf

# #=> 0 sshd 1 sshd.service 0 test
# sshd -t  # before restarting service

# #=> 0 sshd 1 sshd.service 1 enable
# sudo systemctl enable sshd.service --now
# sudo systemctl status sshd.service

# #=> 0 sshd 1 sshd.service 2 restart
# sudo systemctl restart sshd.service

# #=> 0 sshd 1 sshd.service 3 disable
# sudo systemctl disable sshd.service --now

# #=> 0 tint2 0 remove
# sudo pacman -Rs tint2

# #=> 0 tint2 1 tint2-git
# gAUR tint2-git
# nvim -c "silent! /tint2.git" PKGBUILD
# makepkg -sic

# #=> 0 tint3-cpp-git
# gdAUR tint3-cpp-git
# nvim -c "silent! /jmc-88\/tint3.git" PKGBUILD
# makepkg -sic

# #=> 1 Chromium 0 --disable-gpu - for nouveau
# ln -sf $machBld/jo/config/chromium-flags.conf ~/.config/chromium-flags.conf

# #=> 1 Chromium 1 remove chromium-flags.conf - for ATI
# rm ~/.config/chromium-flags.conf

#=> 1 Emacs safely 0 install
ln -sf $ABjo/Emacs/ES/locks.sh ~/Arch/Elocks.sh
sudo ln -sf $ABjo/Emacs/ES/emacs_safely.sh /usr/local/bin/emacs_safely
# pb /usr/local/bin/emacs_safely
sudo ln -sf $ABjo/Emacs/ES/emacs_safely.desktop /usr/share/applications/emacs_safely.desktop
# pb /usr/share/applications/emacs_safely.desktop

#=> 1 Emacs safely 1 remove
rm ~/Arch/Elocks.sh
sudo rm /usr/local/bin/emacs_safely
sudo rm /usr/share/applications/emacs_safely.desktop

