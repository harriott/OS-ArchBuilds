#!/bin/bash

#=> 0 GitHub CLI
sudo pacman -S github-cli
gh config set -h github.com git_protocol ssh

#=> 0 set $OSAB
read -p "\$OSAB is $OSAB - looks good?"

#=> 1 go slow
set -ev
trap read debug  # puts a read request after each executable line

# #=> 2 base-devel group for makepkg
# sudo pacman -S --needed base-devel

# #=> 2 for cmus
# mkdir ~/.config/cmus

# #=> 2 for Dunst
# mkdir -p ~/.config/dunst

# #=> 2 for *mutt
# m=~/.local/share/mail
# mkdir $m $m/cz $m/fm $m/tj $m/live $m/parl $m/troh $m/gmx $m/zou

# #=> 2 for my m4p scripts
# mkdir -p ~/texmf/tex/latex/m4p  # needed eventually for Pandoc in $AjB/bashrc-ob

# #=> 2 GnuPG directory
# gpg -k  # creates & populates  ~/.gnupg

# #=> 2 grab default xinitrc
# cp /etc/X11/xinit/xinitrc ~/xinitrc-m8e

# #=> 2 make AUR directories
# mkdir ~/Arch/AUR ~/Arch/AURdev-clone ~/Arch/AURdev-make

# #=> 2 Pandoc directory
# mkdir -p ~/.pandoc/defaults

#=> 2 ranger scope.sh executable
chmod +x $ABjo/ranger/scope.sh

#=> 2 terminal-colors
pipx install terminal-colors

# #=> 2 Zathura
# mkdir ~/.config/zathura

