#!/bin/bash
# vim: fdl=1:

# bash $bSc/dusty/whenWM.sh

#=> 0 check $ARCHBUILDS
read -p "\$ARCHBUILDS is $ARCHBUILDS - looks good?"

#=> 1 Chromium 0 --disable-gpu - for nouveau
ln -sf $machBld/jo/config/chromium-flags.conf ~/.config/chromium-flags.conf

#=> 1 Chromium 1 remove chromium-flags.conf - for ATI
rm ~/.config/chromium-flags.conf

#=> 1 nodejs-ffmpeg-concat
gAUR nodejs-ffmpeg-concat
nvim PKGBUILD
makepkg -sic

#=> 1 npm ffmpeg-concat
npm install -g ffmpeg-concat

#=> 1 sbMb dual monitors 0
r /etc/X11/xorg.conf.d

#=> 1 sbMb dual monitors 0
sudo cp $machBld/etc/20-monitor.conf /etc/X11/xorg.conf.d/20-monitor.conf

#=> 1 sbMb dual monitors 1
sudo rm /etc/X11/xorg.conf.d/20-monitor.conf

# #=> 1 sshd 1 sshd.service 0 test
# sshd -t  # before restarting service

# #=> 1 sshd 1 sshd.service 1 enable
# sudo systemctl enable sshd.service --now
# sudo systemctl status sshd.service

# #=> 1 sshd 1 sshd.service 2 restart
# sudo systemctl restart sshd.service

# #=> 1 sshd 1 sshd.service 3 disable
# sudo systemctl disable sshd.service --now

