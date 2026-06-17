#!/bin/bash
# vim: se fdl=2:

# bash $OSAB/bs-1-into_jo/3-config.sh

set -e

#=> 1 go slow
set -v  # prints each statement here, including comments

#=> 2 for broot
broot -- install  # gets  br

#=> 2 for  MIME database
mkdir -p ~/.local/share/mime/packages

#=> 2 prepare for nanorc
mkdir -p /home/jo/.config/nano

#=> 1 w3m
mkdir ~/.w3m/cgi-bin

