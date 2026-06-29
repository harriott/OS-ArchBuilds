#!/bin/bash

# $ bash $OSAB/bs-5-when_myDrA/Caddy.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> Caddy
pikn caddy
sudo usermod -aG caddy jo
sudo usermod -aG http caddy  # (seems to need a reboot) for permission to use  /run/php-fpm/php-fpm.sock

#=> DokuWiki 0 install
pikn dokuwiki php-gd
sudo sed -i 's/;extension=gd/extension=gd/' /etc/php/php.ini
sudo sed -i 's/;extension=iconv/extension=iconv/' /etc/php/php.ini  # for  Cloud Plugin, probable needs a reboot
sudo sed -i 's/variables_order/;variables_order/' /etc/php/php.ini

#=> DokuWiki 1 for Caddy
sudo ln -s /usr/share/webapps/dokuwiki /srv/http/dokuwiki  # e -adl /srv/http/dokuwiki
sudo chmod 775 /var/lib/dokuwiki/data/{media,pages}
sudo chmod 775 /var/lib/dokuwiki/data/media/wiki

#=> DokuWiki 1 conf/
sudo usermod -aG http jo  # needs a reboot

#=> DokuWiki 2 conf/
cp $ITcore/serve/DokuWiki/userstyle.css /usr/share/webapps/dokuwiki/conf/userstyle.css
cp $ITcore/serve/DokuWiki/stopwords/non_technical_words.txt /usr/share/webapps/dokuwiki/conf/stopwords.txt

