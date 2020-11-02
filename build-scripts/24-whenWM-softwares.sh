#!/bin/bash
# vim: fdm=expr fdc=1 ft=sh.shfold:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

rAUR () { [[ -d $1 ]] && sudo rm -r $1; }

# #=> aur-out-of-date
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/aur-out-of-date.git
# cd aur-out-of-date
# gvim PKGBUILD
# makepkg -sic

# #=> 8192eu 0 8192eu-dkms - install
# # needs  appmenu-gtk-module dkms linux-headers
# cd ~/Arch/AUR
# rm -fr 8192eu-dkms # (-f is needed for some weird files therein)
# git clone https://aur.archlinux.org/8192eu-dkms.git
# cd 8192eu-dkms
# gvim PKGBUILD
# makepkg -sic
# # reboot !
# true

# #=> 8192eu 1 blacklist rtl8xxxu
# echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf

# #=> 8192eu 2 8192eu-dkms - remove
# sudo pacman -Rs 8192eu-dkms
# reboot !
# true

#=> bat-extras-git
cd ~/Arch/AURdev-clone
git clone https://aur.archlinux.org/bat-extras-git.git
gctm bat-extras-git
gvim PKGBUILD
makepkg -sic

# #=> bpytop
# # supersedes Bashtop
# cd ~/Arch/AUR
# sudo rm -r bpytop
# git clone https://aur.archlinux.org/bpytop.git
# cd bpytop
# gvim PKGBUILD
# makepkg -sic

# #=> chromium-widevine
# cd ~/Arch/AUR
# sudo rm -r chromium-widevine

# git clone https://aur.archlinux.org/chromium-widevine.git
# cd chromium-widevine
# gvim PKGBUILD
# makepkg -sic

# sudo pacman -Rs chromium-widevine

# #=> colorpicker
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/colorpicker.git
# cd colorpicker
# gvim PKGBUILD
# makepkg -sic

# #=> diskonaut
# cd ~/Arch/AUR
# rAUR diskonaut
# git clone https://aur.archlinux.org/diskonaut.git
# cd diskonaut
# gvim PKGBUILD
# makepkg -sic

# #=> Dropbox
# # only once there's a browser, and preferably after LastPass
# cd ~/Arch/AUR
# sudo rm -r dropbox
# git clone https://aur.archlinux.org/dropbox.git
# cd dropbox
# gvim PKGBUILD
# makepkg -sic

# #=> Dust
# # (after Rust Toolchain)
# cd ~/Arch/AUR
# rAUR dust
# git clone https://aur.archlinux.org/dust.git
# cd dust
# gvim PKGBUILD
# makepkg -sic

# #=> Fangfrisch 1 AUR
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/python-fangfrisch.git
# cd python-fangfrisch
# gvim PKGBUILD
# makepkg -sic

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
# gvim PKGBUILD
# makepkg -sic

# #=> Firefox
# sudo pacman -S firefox

# #=> ffmpeg-gl-transition
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/ffmpeg-gl-transition.git
# cd ffmpeg-gl-transition
# gvim PKGBUILD
# makepkg -sic

# #=> fontpreview-git
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/fontpreview-git.git
# cd fontpreview-git
# gvim PKGBUILD
# makepkg -sic

# #=> gifski
# sudo pacman -S gifski

# #=> gnome-disk-utility
# sudo pacman -S gnome-disk-utility

# #=> Google API python toolchain
# sudo pacman -S python-google-api-python-client
# sudo pacman -S python-google-auth-httplib2
# sudo pacman -S python-google-auth-oauthlib

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
# gvim PKGBUILD
# makepkg -sic

# sudo pacman -Rs nodejs-mapscii

# #=> moar
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/moar.git
# sudo rm -r moar
# cd moar
# gvim PKGBUILD
# makepkg -sic

# #=> nodejs-ffmpeg-concat
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/nodejs-ffmpeg-concat.git
# cd nodejs-ffmpeg-concat
# gvim PKGBUILD
# makepkg -sic

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
# gvim PKGBUILD
# makepkg -sic

# #=> perl-data-printer
# cd ~/Arch/AUR
# sudo rm -r perl-data-printer
# git clone https://aur.archlinux.org/perl-data-printer.git
# cd perl-data-printer
# gvim PKGBUILD
# makepkg -sic

# #=> Pinta
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/pinta.git
# cd pinta
# gvim PKGBUILD
# makepkg -sic

# #=> pscircle-git
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/pscircle-git.git
# cd pscircle-git
# gvim PKGBUILD
# makepkg -sic

# #=> quickviewer
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/quickviewer.git
# cd quickviewer
# gvim PKGBUILD
# makepkg -sic

# #=> rtl8192eu
# cd ~/Arch/AUR
# sudo rm -r rtl8192eu
# git clone https://aur.archlinux.org/rtl8192eu.git
# cd rtl8192eu
# gvim PKGBUILD
# makepkg -sic

# #=> Samokovarov's jump
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/jump.git
# cd jump
# gvim PKGBUILD
# makepkg -sic

# #=> sedsed-git
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/sedsed-git.git
# cd sedsed-git
# gvim PKGBUILD
# makepkg -sic  # fails...

# #=> tint-tetris
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/tint-tetris.git
# cd tint-tetris
# gvim PKGBUILD
# makepkg -sic

# #=> vim Calendar
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-calendar-git.git
# cd vim-calendar-git
# gvim PKGBUILD
# makepkg -sic

# #=> vim LanguageTool
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-languagetool.git
# cd vim-languagetool
# gvim PKGBUILD
# makepkg -sic

# #=> vim-mediawiki
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-mediawiki.git
# cd vim-mediawiki
# gvim PKGBUILD
# makepkg -sic

# #=> vim-simpylfold
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-simpylfold.git
# cd vim-simpylfold
# gvim PKGBUILD
# makepkg -sic

# #=> vim Solarized
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-colors-solarized-git.git
# cd vim-colors-solarized-git
# gvim PKGBUILD
# makepkg -sic

# #=> vim-table-mode
# cd ~/Arch/AUR
# rAUR vim-table-mode
# git clone https://aur.archlinux.org/vim-table-mode.git
# cd vim-table-mode
# gvim PKGBUILD
# makepkg -sic

# #=> vim-undotree
# cd ~/Arch/AUR
# sudo rm -r vim-undotree
# git clone https://aur.archlinux.org/vim-undotree.git
# cd vim-undotree
# gvim PKGBUILD
# makepkg -sic

# #=> xbindkeys
# sudo pacman -S xbindkeys

# #=> Zoom
# cd ~/Arch/AUR
# sudo rm -r zoom
# git clone https://aur.archlinux.org/zoom.git
# cd zoom
# gvim PKGBUILD
# makepkg -sic

