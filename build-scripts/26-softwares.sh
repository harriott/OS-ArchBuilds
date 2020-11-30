#!/bin/bash
# vim: fdm=expr ft=sh.shfold:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gctm is defined in $ARCHBUILDS/jo/Bash/bashrc-console
rAUR () { [[ -d $1 ]] && sudo rm -r $1; }

# #=> bat-extras-git
# cd ~/Arch/AURdev-clone
# git clone https://aur.archlinux.org/bat-extras-git.git
# gctm bat-extras-git
# gvim PKGBUILD
# makepkg -sic

# #=> bpytop
# # supersedes  Bashtop
# cd ~/Arch/AUR
# rAUR bpytop
# git clone https://aur.archlinux.org/bpytop.git
# cd bpytop
# gvim PKGBUILD
# makepkg -sic

# #=> cht.sh-git
# cd ~/Arch/AURdev-clone
# git clone https://aur.archlinux.org/cht.sh-git.git
# gctm cht.sh-git
# gvim PKGBUILD
# makepkg -sic

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

#=> Dropbox 0 install
# only once there's a browser, and preferably after LastPass
cd ~/Arch/AUR
rAUR dropbox
git clone https://aur.archlinux.org/dropbox.git
cd dropbox
gvim PKGBUILD
makepkg -sic

#=> Dropbox 1 dropbox-dist folder
install -dm0 ~/.dropbox-dist  # prevents automatic updates, allowing Arch installation to work

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
# rAUR python-fangfrisch
# git clone https://aur.archlinux.org/python-fangfrisch.git
# cd python-fangfrisch
# gvim PKGBUILD
# makepkg -sic

# #=> Fangfrisch 2 settings
# # 1 create database structure
# sudo -u clamav /usr/bin/fangfrisch --conf /etc/fangfrisch/fangfrisch.conf initdb

# # 2 enable systemd timer
# sudo systemctl enable fangfrisch.timer --now

# #=> ffmpeg
# sudo pacman -S ffmpeg

# #=> figlet-fonts
# # brings in figlet
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/figlet-fonts.git
# cd figlet-fonts
# gvim PKGBUILD
# makepkg -sic

# #=> Firefox
# sudo pacman -S firefox

# #=> fontpreview-git
# cd ~/Arch/AURdev-clone
# git clone https://aur.archlinux.org/fontpreview-git.git
# gctm fontpreview-git
# gvim PKGBUILD
# makepkg -sic

# #=> gifski
# sudo pacman -S gifski  # (for making animated GIFs)

# #=> gnome-disk-utility
# sudo pacman -S gnome-disk-utility  # (for Menu > Accessories > Disks)

# #=> Google API python toolchain
# sudo pacman -S python-google-api-python-client
# sudo pacman -S python-google-auth-httplib2
# sudo pacman -S python-google-auth-oauthlib

# #=> gucharmap
# sudo pacman -S gucharmap  # (for Accessories > Character Map > View > By Unicode Block)

# #=> java-commons-lang
# sudo pacman -S java-commons-lang  # (for pdftk's functions)

# #=> LanguageTool
# sudo pacman -S languagetool

#=> moar
cd ~/Arch/AUR
rAUR moar
git clone https://aur.archlinux.org/moar.git
cd moar
gvim PKGBUILD
makepkg -sic
true

# #=> OpenShot
# sudo pacman -S openshot

# #=> pdftk
# sudo pacman -S pdftk

# #=> peek
# sudo pacman -S peek  # (GIF Screen Recorder)

# #=> Perl modules for JSON
# sudo pacman -S perl-json perl-json-parse perl-json-xs

# #=> perl-clone-pp
# # Can't find why I needed this...
# cd ~/Arch/AUR
# rAUR perl-clone-pp
# git clone https://aur.archlinux.org/perl-clone-pp.git
# cd perl-clone-pp
# gvim PKGBUILD
# makepkg -sic

# #=> perl-data-printer
# cd ~/Arch/AUR
# rAUR perl-data-printer
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
# cd ~/Arch/AURdev-clone
# git clone https://aur.archlinux.org/pscircle-git.git
# gctm pscircle-git
# gvim PKGBUILD
# makepkg -sic

# #=> Samokovarov's jump
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/jump.git
# cd jump
# gvim PKGBUILD
# makepkg -sic

# #=> tint-tetris
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/tint-tetris.git
# cd tint-tetris
# gvim PKGBUILD
# makepkg -sic

#=> tspreed
cd ~/Arch/AUR
rAUR tspreed
git clone https://aur.archlinux.org/tspreed.git
cd tspreed
gvim PKGBUILD
makepkg -sic
true

# #=> xbindkeys
# sudo pacman -S xbindkeys

# #=> youtube-dl
# sudo pacman -S youtube-dl

# #=> Zoom
# cd ~/Arch/AUR
# rAUR zoom
# git clone https://aur.archlinux.org/zoom.git
# cd zoom
# gvim PKGBUILD
# makepkg -sic

