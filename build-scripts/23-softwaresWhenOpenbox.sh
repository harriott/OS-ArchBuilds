#!/bin/bash
# vim: fdm=expr ft=sh.shfold:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 tint2rc
mv ~/.config/tint2/tint2rc ~/Arch/tint2rc-kb3
gvim -geometry 200x55 -O ~/Arch/tint2rc-kb3 $Openbox/tint2rc
cp $Openbox/tint2rc ~/.config/tint2/tint2rc

#=> 1 dragon-drag-and-drop
cd ~/Arch/AUR
git clone https://aur.archlinux.org/dragon-drag-and-drop.git
cd dragon-drag-and-drop
xdg-open PKGBUILD
makepkg -sic
cd ~

#=> 1 gphoto2
pacman -S gphoto2

#=> 1 mpv
sudo pacman -S mpv

#=> 1 nomacs
sudo pacman -S nomacs
# now run it for  Ctrl+Shift+p > Close on ESC

#=> 1 PCManFM
pacman -S pcmanfm
# now run it to set some of my preferences:  Edit > Preferences >
#  Terminal emulator:  Advanced > Terminal > urxvt
#  Trash: Confirm before moving files into "trash can"   off-ticked
#  Volume Management > Show available options  off-ticked

#=> 1 Pinta
pacman -S pinta

#=> 1 PNMixer
cd ~/Arch/AUR
git clone https://aur.archlinux.org/pnmixer.git
cd pnmixer
xdg-open PKGBUILD
makepkg -sic
cd ~
# now  Multimedia > PNMixer > Preferences > View > Draw Volume Meter on Tray Icon

#=> 1 qt5-styleplugins
# for qt5ct - allows fix of narrow fonts in XnViewMP

cd ~/Arch/AUR
sudo rm -r qt5-styleplugins
git clone https://aur.archlinux.org/qt5-styleplugins.git
cd qt5-styleplugins
xdg-open PKGBUILD
makepkg -sic
cd ~

#=> 1 qpdfview
sudo pacman -S qpdfview

#=> 1 qt5ct
# - Qt5 theme - allows better tab differentiation in CopyQ

sudo pacman -S qt5ct
grep QT_QPA_PLATFORMTHEME=qt5ct ~/.xinitrc
# now need to  Menu > Settings > Qt5 Settings > Style > cleanlooks
sed -i 's/fusion/cleanlooks/' ~/.config/qt5ct/qt5ct.conf

#=> 1 SANE
sudo pacman -S sane

#=> 1 sxiv
sudo pacman -S sxiv

#=> 1 tmux-bash-completion-git
cd ~/Arch/AUR
git clone https://aur.archlinux.org/tmux-bash-completion-git.git
cd tmux-bash-completion-git
xdg-open PKGBUILD
makepkg -sic
cd ~

# #=> 1 urlview
# # creates a numbered list of url's in a resource

# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/urlview.git
# cd urlview
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

#=> 1 Zathura
sudo pacman -S zathura-pdf-mupdf
ln -fs $Openbox/zathurarc ~/.config/zathura/zathurarc

