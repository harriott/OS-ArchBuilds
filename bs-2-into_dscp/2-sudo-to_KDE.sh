#!/bin/bash
# vim: set fdl=1 sw=2:

# bash $OSAB/bs-2-into_dscp/2-sudo-to_Wayland.sh

read -p "\$OSAB is $OSAB - looks good?"

#=> 0 KDE
sudo pacman -S plasma-meta
sudo pacman -S kde-system-meta kdevelop-meta
sudo pacman -S arianna ark audiocd-kio audex dolphin-plugins dragon elisa falkon ffmpegthumbs filelight gwenview isoimagewriter k3b kalk kalzium kamera kate kcalc kclock kcharselect kcolorchooser kdebugsettings kdeconnect kdenlive kdf kdialog kfind kget kio-extras kio-zeroconf kleopatra kolourpaint konsole krecorder krita kruler krusader kstars ktimer ktorrent kwalletmanager kwave kweather marble okular phonon-qt6-vlc power-profiles-daemon print-manager qrca skanlite skanpage svgpart

#=> 0 more Bash
source $ABno-set/jo-0-Bash.sh

#=> 1 Plasma Login Manager
sudo systemctl enable plasmalogin.service
echo "- now reboot"

