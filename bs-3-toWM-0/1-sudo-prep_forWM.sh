#!/bin/bash

# $OSAB/bs-3-toWM-0/1-sudo-prep_forWM.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -ev
trap read debug  # puts a read request after each executable line

# #=> android-tools
# pacman -S android-tools

# #=> audio - Cmus
# pacman -S cmus

# #=> audio - MPD
# pacman -S mpd
# mkdir -p ~/.mpd/playlists ~/music

# #=> Bluefish
# pacman -S bluefish

#=> documenting
# Ghostscript
pacman -S ghostscript

# Pandoc
pacman -S pandoc-cli

# pylatexenc
pacman -S python-pylatexenc  # for render-markdown.nvim

#=> documenting - TeX Live 0 native 0 cd
cd $ITscc/unix-TL-install-tl-2024

#=> documenting - TeX Live 0 native 1 basic
sudo perl install-tl --scheme=basic --no-interaction

#=> documenting - TeX Live 0 native 1 full
sudo perl install-tl --no-interaction
# took 90m, would be preferable to install from an rsync'd local mirror

#=> documenting - TeX Live 0 native 2 tidy up
mv texlive.profile $machLg/TeXLive/install-tl-example.profile-$(date '+%Y%m%d%H%M')

# #=> documenting - TeX Live 0 native 3 basic - more
# sudo tlmgr install currfile
# sudo tlmgr install easylist
# sudo tlmgr install etoolbox
# sudo tlmgr install filehook
# sudo tlmgr install memoir
# sudo tlmgr install polyglossia
# sudo tlmgr install wrapfig
# sudo tlmgr install xetex
# sudo tlmgr install xcolor

#=> documenting - TeX Live 0 native 4 remove
rm -r /usr/local/texlive
rm -rf ~/.texlive2023

#=> documenting - TeX Live 0 Arch packaged 0 install
pacman -S texlive-most texlive-langchinese texlive-langgreek  # select all
pacman -S texlive-xetex

#=> documenting - TeX Live 0 Arch packaged 1 remove 0 packages
# sudo pacman -Rs  as per  $machLg/TeXLive/Arch_packages-<date>.txt

#=> documenting - TeX Live 0 Arch packaged 1 remove 1 trailing nodes
for td in texinfo texmf texmf-dist; do sudo rm -r /usr/share/$td; done
sudo rm /usr/share/texmf.cnf
sudo rm -r /etc/texmf
sudo rm -r /var/lib/texmf

#=> documenting - TeX Live 1 max_print_line
sudo sed -i 's/^max_print_line = 79/max_print_line = 4000/' /etc/texmf/web2c/texmf.cnf
# - works, but I prefer my function  x  in  $AjB/bashrc-wm

# #=> ebook - Calibre
# pacman -S calibre

# #=> ebook - Foliate
# pacman -S foliate
# # Openbox Menu > Office > Foliate > Menu > Advanced > Continuous

# #=> file manage
# # cdrtools
# pacman -S cdrtools

# # GVFS
# pacman -S gvfs

# # gvfs-mtp - for accessing phone memory
# pacman -S gvfs-mtp

# # nnn
# pacman -S nnn

# #=> for CliFM
pacman -S noto-fonts-emoji  # don't work in  urxvt  or  xterm...

# #=> cmatrix
# pacman -S cmatrix

# #=> hw
# # exFAT utilities
# pacman -S exfatprogs

# # lm_sensors
# pacman -S lm_sensors

#=> hw - xorg-xev
pacman -S xorg-xev

# #=> PulseAudio - pulsemixer
# pacman -S pulsemixer

# #=> networking
# # bluetooth
# gpasswd -a jo lp
# pacman -S blueman bluez bluez-utils pulseaudio-bluetooth
# systemctl enable bluetooth.service --now

# # iptraf-ng
# pacman -S iptraf-ng

# # mailcap
# pacman -S mailcap

# # Transmission
# pacman -S transmission-qt

# #=> WM environment
# # cbatticon
# pacman -S cbatticon

# # CopyQ
# pacman -S copyq

# # Dunst
# pacman -S dunst

# # galculator
# pacman -S galculator

# # gsimplecal
# pacman -S gsimplecal

# #=> pkgconf
# pacman -S --needed pkgconf

# #=> redshift
# pacman -S redshift

# #=> system
# # Conky
# pacman -S conky gperf

# # gtop
# pacman -S gtop

# # python-virtualenvwrapper
# pacman -S python-virtualenvwrapper

# # sysstat
# pacman -S sysstat

# # xdotool
# pacman -S xdotool

