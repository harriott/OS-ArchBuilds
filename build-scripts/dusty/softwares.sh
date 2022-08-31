#!/bin/bash
# vim: sw=1:

# gAUR  rAUR  are defined in $Bash/bashrc-console

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> bdf-unifont 0 install
# gAUR bdf-unifont
# nvim -c "silent! /unifont" PKGBUILD
# makepkg -sic
# pactree -r bdf-unifont  # shows it's maybe not needed
# true

# #=> bdf-unifont 1 remove
# sudo pacman -Rs bdf-unifont

# #=> cht.sh-git 0 install
# gdAUR cht.sh-git
# nvim -c "silent! /chubin" PKGBUILD
# makepkg -sic

# #=> cht.sh-git 1 remove
# sudo pacman -Rs cht.sh-git

#=> clamav-unofficial-sigs 0 install
gdAUR clamav-unofficial-sigs
nvim -c "silent! /extremeshok" PKGBUILD
makepkg -sic
sudo systemctl enable clamav-unofficial-sigs.timer

# #=> clamav-unofficial-sigs 1 remove
# sudo systemctl disable clamav-unofficial-sigs.timer
# sudo pacman -Rs clamav-unofficial-sigs

# #=> clifm 0 install
# gdAUR clifm
# nvim -c "silent! /https:\/\/github.com\/leo-arch\/clifm" PKGBUILD
# makepkg -sic
# cd /usr/share/clifm/plugins
# gcc -o kbgen kbgen.c -lcurses

# #=> clifm 1 remove
# sudo pacman -Rs clifm
# rm -r ~/.config/clifm

# #=> fim 0 bison, flex
# sudo pacman -S bison flex

# #=> fim 1 fim
# # for  $ARCHBUILDS/jo/clifm/mimelist.clifm
# gAUR fim
# nvim -c "silent! /https:\/\/download.savannah.gnu.org\/releases\/fbi-improved" PKGBUILD
# makepkg -sic  # loads of warnings...
# true

# #=> fim 2 remove
# sudo pacman -Rs fim  # because it's crap...

# #=> Google API python toolchain
# sudo pacman -S python-google-api-python-client
# sudo pacman -S python-google-auth-httplib2
# sudo pacman -S python-google-auth-oauthlib

#=> gst123
gAUR gst123
nvim -c "silent! /stefan" PKGBUILD
makepkg -sic  # takes a while
true

#=> LanguageTool
sudo pacman -S languagetool

# #=> libappindicator-gtk3
# sudo pacman -S libappindicator-gtk3  # didn't help with non-captured Dropbox tray icon...

# #=> mesa-demos 0 install
# sudo pacman -S mesa-demos

# #=> mesa-demos 1 remove
# sudo pacman -Rs mesa-demos

# #=> moar-git 0 install
# gAUR moar-git
# nvim -c "silent! /walles" PKGBUILD
# makepkg -sic
# true

# #=> moar-git 1 remove
# cd ~/Arch/AURdev-clone
# rAUR moar-git
# sudo pacman -Rs moar-git
# true

#=> for nnn - advcp
# for nnn -r
# it's been integrated into  advcpmv
gAUR advcp
nvim -c "silent! /advcp" PKGBUILD
# requires Pádraig Brady's key
makepkg -sic  # takes a long time

#=> for nnn - pmount
# for  nmount  plugin (which I don't use)
cd ~/Arch/AUR
git clone https://aur.archlinux.org/pmount.git
cd pmount
nvim PKGBUILD
makepkg -sic

# #=> nodejs-mapscii 0 install
# gAUR nodejs-mapscii
# nvim PKGBUILD
# makepkg -sic
# true

# #=> nodejs-mapscii 1 remove
# sudo pacman -Rs nodejs-mapscii

# #=> patched Cascadia Code font 0 install
# gAUR nerd-fonts-cascadia-code
# nvim -c "silent! /ryanoasis\/nerd-fonts" PKGBUILD
# makepkg -sic
# true

# #=> patched Cascadia Code font 0 remove
# sudo pacman -Rs nerd-fonts-cascadia-code

#=> youtube-dl
sudo pacman -S youtube-dl

