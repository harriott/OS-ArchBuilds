#!/bin/bash

set -ev
trap read debug  # puts a read request after each executable line

# #=> 0 packages for Openbox
# # configure Openbox
# sudo pacman -S lxappearance-obconf obconf

# # Gmrun
# sudo pacman -S gmrun

# # Openbox & tint2
# sudo pacman -S openbox tint2

# # perl-data-dump
# sudo pacman -S perl-data-dump  # for  obmenu-generator

# #=> 0 perl-linux-desktopfiles
# # for  obmenu-generator
# gAUR perl-linux-desktopfiles
# nvim -c "silent! /trizen" PKGBUILD
# makepkg -sic

# #=> 1 Openbox configuration folders
# mkdir ~/.config/openbox
# mkdir ~/.config/obmenu-generator

#=> 2 obmenu-generator
gAUR obmenu-generator
nvim -c "silent! /trizen" PKGBUILD
makepkg -sic

# #=> 2 openbox-themes
# gAUR openbox-themes
# nvim -c "silent! /http:\/\/ftp.debian.org\/debian\/pool\/main\/o\/openbox-themes\/openbox-themes" PKGBUILD
# makepkg -sic

# #=> 3 Openbox Loma theme tweak for active window
# mkdir ~/.local/share/themes
# cp -r /usr/share/themes/Loma ~/.local/share/themes/LomaJH
# sed -i '/window.active.border.color:/ s/#000000/#FF8000/' ~/.local/share/themes/LomaJH/openbox-3/themerc
# sed -i '/^border.width:/ s/1/2/' ~/.local/share/themes/LomaJH/openbox-3/themerc

