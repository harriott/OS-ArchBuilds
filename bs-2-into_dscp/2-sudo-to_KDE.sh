#!/bin/bash
# vim: set fdl=1 sw=2:

# bash $OSAB/bs-2-into_dscp/2-sudo-to_Wayland.sh

read -p "\$OSAB is $OSAB - looks good?"

#=> 0 KDE 0
sudo pacman --needed -S plasma-meta  # Q breeze
sudo pacman --needed -S kde-system-meta # Q partitionmanager
sudo pacman --needed -S kdevelop-meta  # Q kdevelop

# Somethings above needed these (and more, forgotten):
sudo pacman --needed -S noto-fonts-emoji qt6-multimedia-ffmpeg

#=> 0 KDE 1
sudo pacman --needed -S arianna ark audiocd-kio audex dolphin-plugins dragon elisa falkon ffmpegthumbs filelight gwenview isoimagewriter k3b kalk kalzium kamera kate kcalc kclock kcharselect kcolorchooser kdebugsettings kdeconnect kdenlive kdf kdialog kfind kget kio-extras kio-zeroconf kleopatra kolourpaint konsole krecorder krita kruler krusader kstars ktimer ktorrent kwalletmanager kwave kweather marble okular phonon-qt6-vlc pipewire-jack power-profiles-daemon print-manager qrca skanlite skanpage svgpart tesseract-data-eng

# #=> 0 more Bash
# source $ABno-set/jo-0-Bash.sh

# #=> 1 Plasma Login Manager
# sudo systemctl enable plasmalogin.service
# echo "- now reboot"

