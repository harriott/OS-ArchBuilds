#!/bin/bash
# vim: fdl=1:

#=> 0 set $ARCHBUILDS
read -p "\$ARCHBUILDS is $ARCHBUILDS - looks good?"

#=> 1 go slow
set -ev
trap read debug  # puts a read request after each executable line

#=> 2 base-devel group for makepkg
sudo pacman -S --needed base-devel

# #=> 2 for *mutt
# m=~/.local/share/mail
# mkdir $m $m/cz $m/fm $m/tj $m/live $m/parl $m/troh $m/gmx $m/zou

# #=> 2 for my m4p scripts
# mkdir -p ~/texmf/tex/latex/m4p  # needed eventually for Pandoc in $Bash/bashrc-ob

# #=> 2 grab default xinitrc
# cp /etc/X11/xinit/xinitrc ~/xinitrc-m8e

# #=> 2 LanguageTool
# # needed for command-line usage
# sudo ln -sf $cITh/CP/LanguageTool /usr/share/java/LanguageTool
# exa -la /usr/share/java

#=> 2 make AUR directories
mkdir ~/Arch/AUR ~/Arch/AURdev-clone ~/Arch/AURdev-make

#=> 2 terminal-colors
pipx install terminal-colors

