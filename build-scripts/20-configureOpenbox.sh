#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 $MACHINE
ARCHBUILDS=~/ArchBuilds
    MACHINE=$ARCHBUILDS/sbMb

#=> 0 ~/.config/openbox
mkdir ~/.config/openbox

#=> 0 openbox-themes
cd ~/Arch/AUR
git clone https://aur.archlinux.org/openbox-themes.git
cd openbox-themes
cat PKGBUILD | less
makepkg -sic

# Openbox Loma theme tweak for active window
mkdir ~/.local/share/themes
cp -r /usr/share/themes/Loma ~/.local/share/themes/LomaJH
sed -i '/window.active.border.color:/ s/#000000/#FF8000/' ~/.local/share/themes/LomaJH/openbox-3/themerc
sed -i '/^border.width:/ s/1/2/' ~/.local/share/themes/LomaJH/openbox-3/themerc

#=> 1 importScreenshot.sh
cp $ARCHBUILDS/jo/Openbox/openbox/importScreenshot.sh ~/.config/openbox/importScreenshot.sh
chmod 755 ~/.config/openbox/importScreenshot.sh

#=> 1 obmenu-generator
cd ~/Arch/AUR
[[ -d obmenu-generator ]] && sudo rm -r obmenu-generator
git clone https://aur.archlinux.org/obmenu-generator.git
cd obmenu-generator
cat PKGBUILD | less
makepkg -sic
if [[ -d $DROPBOX ]]; then # assume that my Dropbox is up
    gvim -O /etc/xdg/obmenu-generator/schema.pl $MACHINE/jo/openbox/schema.pl
else
    cp /etc/xdg/obmenu-generator/schema.pl /mm/k8v-schema.pl # diff against this later
fi

