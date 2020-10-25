#!/bin/bash
# vim: fdm=expr fdc=1 ft=sh.shfold:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 Pádraig Brady's key for coreutils
# for advcp
gpg --recv-keys 6C37DC12121A5006BC1DB804DF6FD971306037D9

#=> 0 tint2rc
mv ~/.config/tint2/tint2rc $Openbox/kao-tint2rc
gvim -O $Openbox/kao-tint2rc $Openbox/tint2rc
cp $Openbox/tint2rc ~/.config/tint2/tint2rc

#=> 1 advcp
# for nnn -r
cd ~/Arch/AUR
sudo rm -r advcp
git clone https://aur.archlinux.org/advcp.git
cd advcp
xdg-open PKGBUILD
# requires Pádraig Brady's key
makepkg -sic
cd ~

#=> 1 dragon-drag-and-drop
cd ~/Arch/AUR
git clone https://aur.archlinux.org/dragon-drag-and-drop.git
cd dragon-drag-and-drop
xdg-open PKGBUILD
makepkg -sic
cd ~

#=> 1 gphoto2
pacman -S gphoto2

#=> 1 LibreOffice Fresh
sudo pacman -S libreoffice-fresh-en-gb
libreoffice  # first-run of LibreOffice - close it

#=> 1 mpv
sudo pacman -S mpv

# #=> 1 nnn plugins
# [[ -d ~/.config/nnn/plugins ]] && rm -r ~/.config/nnn/plugins/*
# curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

# #=> 1 nomacs
# # ...

# #=> 1 PCManFM
# pacman -S pcmanfm
# # ...

# #=> 1 Pinta
# pacman -S pinta

# #=> 1 PNMixer
# # ...

# #=> 1 qimgv-git 0 install
# cd ~/Arch/AUR
# sudo rm -r qimgv-git
# git clone https://aur.archlinux.org/qimgv-git.git
# cd qimgv-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> 1 qimgv-git 1 remove
# sudo pacman -Rs qimgv-git

# #=> 1 qt5-styleplugins
# cd ~/Arch/AUR
# sudo rm -r qt5-styleplugins
# git clone https://aur.archlinux.org/qt5-styleplugins.git
# cd qt5-styleplugins
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> 1 qpdfview
# sudo pacman -S qpdfview

# #=> 1 qt5ct
# sudo pacman -S qt5ct
# grep QT_QPA_PLATFORMTHEME=qt5ct ~/.xinitrc
# # now need to  Menu > Settings > Qt5 Settings > Style > cleanlooks
# #  sed -i s/fusion/cleanlooks/' ~/.config/qt5ct/qt5ct.conf
# true

# #=> 1 SANE
# # ...

# #=> 1 sxiv
# sudo pacman -S sxiv

# #=> 1 Thunderbird
# # ...

# #=> 1 tmux-bash-completion-git
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/tmux-bash-completion-git.git
# cd tmux-bash-completion-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> 1 urlview
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/urlview.git
# cd urlview
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> 1 youtube-dl
# pacman -S youtube-dl

# #=> 1 Zathura
# sudo pacman -S zathura-pdf-mupdf
# ln -fs $Openbox/zathurarc ~/.config/zathura/zathurarc

#=> 2 LibreOffice configuration
uc0=~/.config/libreoffice/4/user
    rm -r $uc0/config
    rm $uc0/registrymodifications.xcu
uc1=$ITstack/OpenOffice/LibreOffice/j9o-HPP-user
    cp -r $uc1/config $uc0/config
    cp $uc1/registrymodifications.xcu $uc0/registrymodifications.xcu

