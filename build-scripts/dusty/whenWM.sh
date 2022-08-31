#!/bin/bash

# bash $bSc/dusty/whenWM.sh

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

#=> 0 check $ARCHBUILDS
read -p "\$ARCHBUILDS is $ARCHBUILDS - looks good?"

#=> 0 nodejs-ffmpeg-concat
gAUR nodejs-ffmpeg-concat
nvim PKGBUILD
makepkg -sic

#=> 0 npm ffmpeg-concat
npm install -g ffmpeg-concat

#=> 0 qt5-styleplugins
# for qt5ct - allows fix of narrow fonts in XnViewMP
gAUR qt5-styleplugins
nvim -c "silent! /qtstyleplugins" PKGBUILD
makepkg -sic  # takes a long time

#=> 0 sbMb dual monitors 0
r /etc/X11/xorg.conf.d

#=> 0 sbMb dual monitors 1
sudo cp $machBld/etc/20-monitor.conf /etc/X11/xorg.conf.d/20-monitor.conf

#=> 0 sbMb dual monitors 2
sudo rm /etc/X11/xorg.conf.d/20-monitor.conf

#=> 0 sshd 1 sshd.service 0 test
sshd -t  # before restarting service

# #=> 0 sshd 1 sshd.service 1 enable
# sudo systemctl enable sshd.service --now
# sudo systemctl status sshd.service

# #=> 0 sshd 1 sshd.service 2 restart
# sudo systemctl restart sshd.service

# #=> 0 sshd 1 sshd.service 3 disable
# sudo systemctl disable sshd.service --now

#=> 1 Chromium 0 --disable-gpu - for nouveau
ln -sf $machBld/jo/config/chromium-flags.conf ~/.config/chromium-flags.conf

#=> 1 Chromium 1 remove chromium-flags.conf - for ATI
rm ~/.config/chromium-flags.conf

# #=> tint2 0 remove
# sudo pacman -Rs tint2

# #=> tint2 1 tint2-git
# gAUR tint2-git
# nvim -c "silent! /tint2.git" PKGBUILD
# makepkg -sic

# #=> tint3-cpp-git
# gdAUR tint3-cpp-git
# nvim -c "silent! /jmc-88\/tint3.git" PKGBUILD
# makepkg -sic

