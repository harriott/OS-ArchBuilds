#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 $MACHINE
ARCHBUILDS=~/ArchBuilds
    MACHINE=$ARCHBUILDS/sbMb

#=> 1 obmenu-generator
cd ~/Arch/AUR
sudo rm -r obmenu-generator
git clone https://aur.archlinux.org/obmenu-generator.git
cd obmenu-generator
cat PKGBUILD | less
makepkg -sic
# now diff against the default
nvim -O /etc/xdg/obmenu-generator/schema.pl $MACHINE/jo/openbox/schema.pl

# #=> openbox-themes
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/openbox-themes.git
# cd openbox-themes
# cat PKGBUILD | less
# makepkg -sic

# # Openbox Loma theme tweak for active window
# mkdir ~/.local/share/themes
# cp -r /usr/share/themes/Loma ~/.local/share/themes/LomaJH
# sed -i '/window.active.border.color:/ s/#000000/#FF8000/' ~/.local/share/themes/LomaJH/openbox-3/themerc
# sed -i '/^border.width:/ s/1/2/' ~/.local/share/themes/LomaJH/openbox-3/themerc
# cd ~

