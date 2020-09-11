#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

rAUR () { [[ -d $1 ]] && sudo rm -r $1; }

# #=> 8192eu 0 8192eu-dkms - install
# # needs  appmenu-gtk-module dkms linux-headers
# cd ~/Arch/AUR
# rm -fr 8192eu-dkms # (-f is needed for some weird files therein)
# git clone https://aur.archlinux.org/8192eu-dkms.git
# cd 8192eu-dkms
# xdg-open PKGBUILD
# makepkg -sic
# cd ~
# # reboot !
# true

# #=> 8192eu 1 blacklist rtl8xxxu
# echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf

# #=> 8192eu 2 8192eu-dkms - remove
# sudo pacman -Rs 8192eu-dkms
# reboot !
# true

# #=> bat-extras-git
# cd ~/Arch/AUR
# sudo rm -r bat-extras-git
# git clone https://aur.archlinux.org/bat-extras-git.git
# cd bat-extras-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> chromium-widevine
# cd ~/Arch/AUR
# sudo rm -r chromium-widevine
# git clone https://aur.archlinux.org/chromium-widevine.git
# cd chromium-widevine
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> colorpicker
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/colorpicker.git
# cd colorpicker
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

#=> diskonaut
cd ~/Arch/AUR
rAUR diskonaut
git clone https://aur.archlinux.org/diskonaut.git
cd diskonaut
xdg-open PKGBUILD
makepkg -sic
cd ~

# #=> Dropbox
# # only once there's a browser, and preferably after LastPass
# cd ~/Arch/AUR
# sudo rm -r dropbox
# git clone https://aur.archlinux.org/dropbox.git
# cd dropbox
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

#=> Dust
# (after Rust Toolchain)
cd ~/Arch/AUR
rAUR dust
git clone https://aur.archlinux.org/dust.git
cd dust
xdg-open PKGBUILD
makepkg -sic
cd ~

# #=> Fangfrisch 1 AUR
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/python-fangfrisch.git
# cd python-fangfrisch
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> Fangfrisch 2 settings
# # 1 create database structure
# sudo -u clamav /usr/bin/fangfrisch --conf /etc/fangfrisch/fangfrisch.conf initdb

# # 2 enable systemd timer
# sudo systemctl enable fangfrisch.timer

# #=> ffmpeg
# sudo pacman -S ffmpeg

# #=> figlet-fonts
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/figlet-fonts.git
# cd figlet-fonts
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> Firefox
# sudo pacman -S firefox

# #=> ffmpeg-gl-transition
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/ffmpeg-gl-transition.git
# cd ffmpeg-gl-transition
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> gifski
# sudo pacman -S gifski

# #=> gnome-disk-utility
# sudo pacman -S gnome-disk-utility

# #=> gucharmap
# sudo pacman -S gucharmap
# # Accessories > Character Map > View > By Unicode Block

# #=> java-commons-lang
# # for pdftk's functions
# sudo pacman -S java-commons-lang

# #=> Mapscii
# cd ~/Arch/AUR
# sudo rm -r nodejs-mapscii
# git clone https://aur.archlinux.org/nodejs-mapscii.git
# cd nodejs-mapscii
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# sudo pacman -Rs nodejs-mapscii

# #=> moar
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/moar.git
# sudo rm -r moar
# cd moar
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> nodejs-ffmpeg-concat
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/nodejs-ffmpeg-concat.git
# cd nodejs-ffmpeg-concat
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> npm ffmpeg-concat
# sudo pacman -S npm
# mkdir ~/.npm-global
# npm config set prefix=$HOME/.npm-global
# npm install npm@latest -g
# which npm
# npm install -g ffmpeg-concat

# #=> OpenShot
# sudo pacman -S openshot

# #=> pdftk
# sudo pacman -S pdftk

# #=> peek
# sudo pacman -S peek

# #=> Perl modules for JSON
# sudo pacman -S perl-json perl-json-parse perl-json-xs

# #=> perl-clone-pp
# cd ~/Arch/AUR
# sudo rm -r perl-clone-pp
# git clone https://aur.archlinux.org/perl-clone-pp.git
# cd perl-clone-pp
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> perl-data-printer
# cd ~/Arch/AUR
# sudo rm -r perl-data-printer
# git clone https://aur.archlinux.org/perl-data-printer.git
# cd perl-data-printer
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> Pinta
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/pinta.git
# cd pinta
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> pscircle-git
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/pscircle-git.git
# cd pscircle-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> quickviewer
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/quickviewer.git
# cd quickviewer
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> rtl8192eu
# cd ~/Arch/AUR
# sudo rm -r rtl8192eu
# git clone https://aur.archlinux.org/rtl8192eu.git
# cd rtl8192eu
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> Samokovarov's jump
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/jump.git
# cd jump
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> vim Calendar
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-calendar-git.git
# cd vim-calendar-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> vim LanguageTool
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-languagetool.git
# cd vim-languagetool
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> vim-mediawiki
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-mediawiki.git
# cd vim-mediawiki
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> vim-simpylfold
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-simpylfold.git
# cd vim-simpylfold
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> vim Solarized
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-colors-solarized-git.git
# cd vim-colors-solarized-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> vim-undotree
# cd ~/Arch/AUR
# sudo rm -r vim-undotree
# git clone https://aur.archlinux.org/vim-undotree.git
# cd vim-undotree
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> xbindkeys
# sudo pacman -S xbindkeys

# #=> Zoom
# cd ~/Arch/AUR
# sudo rm -r zoom
# git clone https://aur.archlinux.org/zoom.git
# cd zoom
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

