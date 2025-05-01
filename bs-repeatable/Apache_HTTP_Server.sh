#!/bin/bash

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

set -ev  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> Apache HTTP Server 0 install
sudo pacman -S apache
echo 'now sync  $OSAB/nodes/etc_httpd_conf/httpd.conf'

#=> Apache HTTP Server 1 enable
sudo systemctl enable httpd.service --now  # check  http://localhost/

#=> Apache HTTP Server 1 remove
sudo pacman -Rs apache

#=> Apache HTTP Server 2 tweaks for PHP
echo 'sync  $OSAB/nodes/etc_httpd_conf/extra/php-fcgid.conf'

#=> Apache HTTP Server 2 virtual hosts 1 configuration
echo 'sync  $OSAB/nodes/etc_httpd_conf/httpd-vhosts.conf'

#=> Apache HTTP Server 2 virtual hosts 2 DocumentRoot's 0 set
# http://atiavda
sudo mkdir /srv/http/atiavda
sudo chown jo:jo /srv/http/atiavda

# http://GHP
sudo mkdir /srv/http/GHP
sudo chown jo:jo /srv/http/GHP

# http://test
sudo mkdir /srv/http/test
sudo chown jo:jo /srv/http/test

# if seeing "Access forbidden!" try redoing these

#=> Apache HTTP Server 2 virtual hosts 2 DocumentRoot's 1 remove
sudo rm -r /srv/http/atiavda/*
sudo rm -r /srv/http/GHP/*
sudo rm -r /srv/http/test/*

#=> Apache HTTP Server 4 tests of PHP
echo '<?php phpinfo(); ?>' | sudo tee -a /srv/http/phpinfo.php  # sudo rm /srv/http/phpinfo.php
sudo chown jo:jo /srv/http/phpinfo.php
# http://localhost/phpinfo.php
echo '<?php phpinfo(); ?>' > /srv/http/test/phpinfo.php  # sudo rm /srv/http/test/phpinfo.php
# http://test/phpinfo.php

