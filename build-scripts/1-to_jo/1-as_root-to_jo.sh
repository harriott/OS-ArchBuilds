#!/bin/bash

# sudo bash $bSc/1-to_jo/1-as_root-to_jo.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -v  # prints each statement here, including comments

# #=> 0 set $OSAB & $machBld
# cd $(dirname "${BASH_SOURCE[0]}")
# . ../../Bash/export-storage
# read -p "\$OSAB is $OSAB - looks good?"

# #=> 1 go slow
# set -v  # prints each statement here, including comments
# trap read debug  # puts a read request after each executable line

# #=> 2 file manage
# # broot
# pacman -S broot
# broot # to generate br command
# echo "${tpfn}"  # reset normal text

# # dvd+rw-tools
# pacman -S dvd+rw-tools

# # enca
# pacman -S enca

# # exa
# pacman -S exa

# # fd
# pacman -S fd

# # FuseISO
# pacman -S fuseiso

# # fzf
# pacman -S fzf

# # lsd
# pacman -S awesome-terminal-fonts lsd

# # mlocate
# pacman -S mlocate
# updatedb

# # ncdu
# pacman -S ncdu

# # perl-rename
# pacman -S perl-rename

# # perl-test-fatal
# pacman -S perl-test-fatal  # needed for  perl-unicode-utf8

# # p7zip
# pacman -S p7zip

# # ranger
# pacman -S ranger

# # rhash
# pacman -S rhash

# # ripgrep
# pacman -S ripgrep

# # rsync
# pacman -S rsync

# # sharkdp's bat
# pacman -S bat

# # trash-cli
# pacman -S trash-cli

# # tree
# pacman -S tree

# # Vifm
# pacman -S vifm

# #=> 2 hd 0
# # diskus
# pacman -S diskus

# # hdparm
# pacman -S hdparm

# # NTFS-3G
# pacman -S ntfs-3g

# # smartmontools
# pacman -S smartmontools

# # udiskie
# pacman -S udiskie

# #=> 2 hd 1 SSDs
# # dua-cli
# pacman -S dua-cli  # dua  for SSDs

# # gdu
# pacman -S gdu

# # weekly TRIM
# # systemctl status fstrim.timer
# systemctl enable fstrim.timer --now

# #=> 2 info
# # Bashtop
# pacman -S bashtop  # later superseded by AUR bpytop

# # Dateutils
# pacman -S dateutils

# # htop
# pacman -S htop

# # iotop
# pacman -S iotop

# # lshw
# pacman -S lshw

# # lsof
# pacman -S lsof

# # man-db
# pacman -S man-db

# # man-pages
# pacman -S man-pages

# # Neofetch
# pacman -S neofetch

# # pinfo
# pacman -S pinfo

# # progress
# pacman -S progress

# # sysstat
# pacman -S sysstat

# # tealdeer
# pacman -S tealdeer
# tldr -u

# #=> 2 limit systemd Journal size
# # helpful for storage-limited installations
# sed -i 's/^#SystemMaxUse=/SystemMaxUse=300/' /etc/systemd/journald.conf
# grep SystemMaxUse /etc/systemd/journald.conf

#=> 2 networking
# GitHub CLI
pacman -S github-cli
gh config set -h github.com git_protocol ssh

# isync
pacman -S isync  # for mbsync

# netcat - for network connection tests
pacman -S openbsd-netcat

# NetworkManager
pacman -S networkmanager

# tcpdump
pacman -S tcpdump  # for packet analysis

# Wget
pacman -S wget

# #=> 2 packages - automake
# pacman -S automake

# #=> 2 packages - Pacman
# # colorized Pacman
# sudo sed -i 's/#Color/Color/' /etc/pacman.conf

# # expac
# pacman -S expac

# # pacman-contrib, for paccache
# pacman -S pacman-contrib

# # pacutils
# pacman -S pacutils

# # pkgfile - for finding possible packages
# pacman -S pkgfile
# pkgfile -u
# systemctl enable pkgfile-update.timer --now
# systemctl list-timers

# # pkgstats
# pacman -S pkgstats

#=> Ruby 0 IRB
pacman -S ruby

#=> Ruby 0 IRB
pacman -S ruby-irb

#=> Ruby 1 documentation
pacman -S ruby-docs ruby-rdoc

#=> Ruby 2 gems
gem update

#=> Ruby 3 Jekyll & bundler
gem install bundler jekyll  # takes ages...
true

# #=> 2 system
# # btop
# pacman -S btop

# # fcron
# pacman -S fcron
# systemctl enable fcron.service

# # glances
# pacman -S glances

# # Mesa demos
# pacman -S mesa-demos  # probably brings in  mesa

# # meson, for auracle later
# pacman -S meson

# # Pipe Viewer
# pacman -S pv

# #=> 2 system - bpytop
# # supersedes  Bashtop
# pacman -S bpytop

# #=> 2 various
# # dotnet-runtime-6.0
# pacman -S dotnet-runtime-6.0  # for Pinta

# # languagetool
# pacman -S languagetool  # for the GUI

# # Node Package Manager 0 npm install
# pacman -S npm

# # OpenOffice English thesaurus
# pacman -S mythes-en

# # pass (brings in gnupg)
# pacman -S pass

# # python-pipx
# pacman -S python-pipx
#  pipx ensurepath

# # strace - for debugging
# pacman -S strace

# # for thesaurus_query.vim
# pacman -S python-beautifulsoup4

# # universal-ctags
# pacman -S ctags

# # web-ish
# pacman -S arch-wiki-docs lynx w3m

# #=> 2 various - Emacs
# pacman -S emacs

# #=> 2 various - GNOME Terminal
# pacman -S gnome-terminal

# #=> 2 swappiness to 10
# # check the default
# sysctl vm.swappiness
# # show that  /etc/sysctl.d  is empty
# ls /etc/sysctl.d
# # fix lower value, which will become effective after reboot
# echo "vm.swappiness=00" > /etc/sysctl.d/99-sysctl.conf
# cat /etc/sysctl.d/99-sysctl.conf

# #=> 2 users
# # activate wheel group
# sed -i '0,/%wheel/ s/^# %wheel/%wheel/' /etc/sudoers
# grep wheel /etc/sudoers
# # check that  /etc/sudoers  parses OK
# visudo -c -f /etc/sudoers

# # User jo, creating the home directory and adding to group wheel
# useradd -m -G wheel jo
# until passwd jo; do echo "try again"; done
# cat /etc/passwd

# #=> 3 doas
# pacman -S opendoas
# cp $OSAB/etc/doas.conf /etc/doas.conf  # sudo prettybat /etc/doas.conf
# chmod -c 0400 /etc/doas.conf  # s /etc/doas.conf
# # after a reboot, test with  doas updatedb

# #=> 3 Rootkit Hunter
# pacman -S rkhunter

# #=> 4 end
# # you're ready to reboot and login to jo

