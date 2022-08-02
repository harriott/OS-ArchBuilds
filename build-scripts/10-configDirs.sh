#!/bin/bash

#=> 0 go slow
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 1 for MediaWiki
mkdir -p ~/.local/share/mime/packages

# #=> 1 prepare for nanorc
# mkdir -p /home/jo/.config/nano

# #=> 1 Rootkit Hunter
# mkdir /home/jo/Arch

#=> 1 tealdeer
tldr --update

