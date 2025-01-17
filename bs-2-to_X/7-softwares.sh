#!/bin/bash

# softwares that can be used in a cli

if [ $TERM != 'screen-256color' ]; then echo 'run this from tmux'; exit; fi

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> devtools
# # mkdir /mnt/SD480GSSDPlus/chroot
# sudo pacman -S devtools  # for package managers

# #=> dictd
# sudo pacman -S dictd

# #=> diskonaut
# sudo pacman -S diskonaut

# #=> Dust
# # (after Rust Toolchain)
# sudo pacman -S dust

#=> etckeeper
sudo pacman -S etckeeper

#=> fping
sudo pacman -S fping

#=> grammalecte
sudo pacman -S grammalecte

# #=> libsixel
# sudo pacman -S libsixel  # for  sixel  graphics

# #=> npm 0 configure npm-global
# mkdir ~/.npm-global
# npm config set prefix=$HOME/.npm-global

#=> npm 1 carbonyl
npm i -g carbonyl

# #=> npm 1 cspell
# npm i -g cspell

#=> npm 1 mapscii
npm i -g mapscii

# #=> npm 1 wikit
# npm i -g wikit

 #=> Perl modules for JSON
# sudo pacman -S perl-json perl-json-parse perl-json-xs  # can't recall why...

 #=> perlcritic
sudo pacman -S perl-perl-critic

#=> Signal
sudo pacman -S signal-desktop

# #=> ttf-croscore
# sudo pacman -S ttf-croscore

#=> whipper
sudo pacman -S whipper  # for audio CDs
cp $ABjo/whipper.conf ~/.config/whipper/whipper.conf
# pb ~/.config/whipper/whipper.conf

