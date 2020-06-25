#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> Event Calendar
cd ~/Arch/AUR
sudo rm -r plasma5-applets-eventcalendar
git clone https://aur.archlinux.org/plasma5-applets-eventcalendar.git
cd plasma5-applets-eventcalendar
xdg-open PKGBUILD
makepkg -sic
cd ~

