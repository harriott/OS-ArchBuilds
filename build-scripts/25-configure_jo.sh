#!/bin/bash
# vim: fdl=1:

#=> broot br
broot  # to load  br

#=> for *mutt
mkdir ~/.local/share/mail

#=> for my m4p scripts
mkdir -p ~/texmf/tex/latex/m4p  # needed eventually for Pandoc in $Bash/bashrc-ob

#=> grab default xinitrc
cp /etc/X11/xinit/xinitrc ~/xinitrc-laa

#=> make AUR directories
mkdir ~/Arch/AUR ~/Arch/AURdev-clone ~/Arch/AURdev-make

#=> base-devel group for makepkg
sudo pacman -S --needed base-devel

