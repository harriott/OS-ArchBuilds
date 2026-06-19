#!/bin/bash

# $ bash $OSAB/bs-4-whenWM/4-various.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> Caddy
sudo pacman -S caddy
sudo usermod -aG caddy jo
sudo usermod -aG http caddy  # (seems to need a reboot) for permission to use  /run/php-fpm/php-fpm.sock

#=> DokuWiki 0 install
sudo pacman -S dokuwiki php-gd
sudo sed -i 's/;extension=gd/extension=gd/' /etc/php/php.ini
sudo sed -i 's/;extension=iconv/extension=iconv/' /etc/php/php.ini  # for  Cloud Plugin, probable needs a reboot
sudo sed -i 's/variables_order/;variables_order/' /etc/php/php.ini

#=> DokuWiki 1 for Caddy
sudo ln -s /usr/share/webapps/dokuwiki /srv/http/dokuwiki
sudo chmod 775 /var/lib/dokuwiki/data/{media,pages}
sudo chmod 775 /var/lib/dokuwiki/data/media/wiki

#=> DokuWiki 1 conf/
sudo usermod -aG http jo  # needs a reboot

#=> DokuWiki 2 conf/
cp $ITcore/DokuWiki/userstyle.css /usr/share/webapps/dokuwiki/conf/userstyle.css
cp $ITcore/DokuWiki/stopwords/non_technical_words.txt /usr/share/webapps/dokuwiki/conf/stopwords.txt

# #=> 0 enable multilib
# sudo sed -i 's/#\[multilib]/[multilib]/' /etc/pacman.conf
# sudo sed -i '/^\[m/{n;s/#I/I/}' /etc/pacman.conf

# #=> 0 fcitx5-configtool
# sudo pacman -S fcitx5-configtool  # because  fcitx  somehow installed, bringing its clipboard

# #=> 0 LibreOffice Fresh install
# sudo pacman -S libreoffice-fresh-en-gb
# libreoffice  # first-run of LibreOffice - close it

# #=> 0 NetworkManager - network-manager-applet
# sudo pacman -S network-manager-applet

# #=> 0 Pandoc reference.odt
# pandoc -o ~/.pandoc/custom-reference.odt --print-default-data-file reference.odt

# #=> 0 pavucontrol
# sudo pacman -S pavucontrol  # for pnmixer
# # now:
# #  1. right-click on PNMixer > Preferences > Behaviour > Volume Control Command > pavucontrol
# #  2. tweak  ~/.config/pnmixer/config
# true

# #=> 0 proselint
# pipx install proselint

# #=> 0 radio-active
# pipx install radio-active

# #=> 0 surfraw
# mkdir ~/.config/surfraw
# sudo pacman -S surfraw

# #=> 0 Thunderbird 0 install
# sudo pacman -S thunderbird-i18n-en-gb
# thunderbird  # generates a dummy Profile, not to be hereafter used

# #=> 0 Thunderbird 1 remove
# sudo pacman -Rs thunderbird thunderbird-i18n-en-gb

# #=> 0 yaml2toml
# pipx install yaml2toml

# #=> 1 check $OSAB
# read -p "\$OSAB is $OSAB - looks good?"

# #=> 2 NetworkManager dispatcher
# sudo systemctl enable NetworkManager-dispatcher --now
# sudo cp $OSAB/etc/NMdispatcher-ntpd.sh /etc/NetworkManager/dispatcher.d/ntpd.sh
# sudo chmod 755 /etc/NetworkManager/dispatcher.d/ntpd.sh
# # vifm /etc/NetworkManager/dispatcher.d /usr/lib/NetworkManager/dispatcher.d

