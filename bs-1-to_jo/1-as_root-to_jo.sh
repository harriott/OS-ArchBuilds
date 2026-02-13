#!/bin/bash

# sudo bash $OSAB/bs-1-to_jo/1-as_root-to_jo.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -v  # prints each statement here, including comments

# #=> 0 set $OSAB & $machBld
# cd $(dirname "${BASH_SOURCE[0]}")
# . ../../nodes-Bash/export-storage
# read -p "\$OSAB is $OSAB - looks good?"

# #=> 1 go slow
# set -v  # prints each statement here, including comments
# trap read debug  # puts a read request after each executable line

#=> 2 99-sysctl.conf
# show that  /etc/sysctl.d  is empty
ls /etc/sysctl.d
true

#==> 0 enable the SysRq keys
echo kernel.sysrq=1 > /etc/sysctl.d/99-sysctl.conf

#==> 0 swappiness to 10
# check the default
sysctl vm.swappiness
# fix lower value, which will become effective after reboot
echo "vm.swappiness=00" >> /etc/sysctl.d/99-sysctl.conf

#==> 3 check settings
cat /etc/sysctl.d/99-sysctl.conf

# #=> 2 automake
# pacman -S automake

#=> 2 file manage
# broot
pacman -S broot
broot # to generate br command
echo "${tpfn}"  # reset normal text

# Chafa
pacman -S chafa

# dvd+rw-tools
pacman -S dvd+rw-tools

# enca
pacman -S enca

# eza
pacman -S eza

# fd
pacman -S fd

# felix
pacman -S felix-rs

# FuseISO
pacman -S fuseiso

# fzf
pacman -S fzf

# lsd
pacman -S awesome-terminal-fonts lsd

# mlocate
pacman -S plocate
updatedb

# ncdu
pacman -S ncdu

# perl-rename
pacman -S perl-rename

# perl-test-fatal
pacman -S perl-test-fatal  # needed for  perl-unicode-utf8

# p7zip
pacman -S p7zip

# ranger
pacman -S ranger

# rhash
pacman -S rhash

# ripgrep
pacman -S ripgrep

# rsync
pacman -S rsync

# sharkdp's bat
pacman -S bat

# skim
pacman -S skim

# trash-cli
pacman -S trash-cli

# tree
pacman -S tree

# Vifm
pacman -S vifm

# Yazi
pacman -S yazi

# zoxide
pacman -S zoxide

#=> 2 hd 0
# atop
pacman -S atop

# diskus
pacman -S diskus

# duf
pacman -S duf

# hdparm
pacman -S hdparm

# ioping
pacman -S ioping

# NTFS-3G
pacman -S ntfs-3g

# smartmontools
pacman -S smartmontools

# udiskie
pacman -S udiskie

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

#=> 2 info - tldr 0 install
pacman -S tldr
tldr -u

#=> 2 systemd Journal size
grep SystemMaxUse /etc/systemd/journald.conf

#==> 0 limit
# helpful for storage-limited installations
sed -i 's/^#SystemMaxUse=/SystemMaxUse=300/' /etc/systemd/journald.conf

#==> 1 unlimit
sed -i 's/^SystemMaxUse=300/#SystemMaxUse=/' /etc/systemd/journald.conf

#=> 2 networking
# arp-scan
pacman -S arp-scan

# netcat - for network connection tests
pacman -S openbsd-netcat

# NetworkManager
pacman -S networkmanager

# tcpdump
pacman -S tcpdump  # for packet analysis

# Wget
pacman -S wget

#=> 2 networking - isync 0 install
pacman -S isync  # for mbsync

#=> 2 networking - isync 0 remove
pacman -Rs isync

# #=> 2 Pacman
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

#=> 2 encoding - bash-language-server 0 install
pacman -S bash-language-server

#=> 2 encoding - bash-language-server 1 remove
pacman -Rs bash-language-server

#=> 2 encoding - git-delta
pacman -S git-delta

#=> 2 encoding - lazygit
pacman -S lazygit

#=> 2 encoding - lua-language-server
pacman -S lua-language-server

#=> 2 encoding - luarocks
pacman -S luarocks

#=> 2 encoding - onefetch
pacman -S onefetch

#=> 2 encoding - python-pip 0 (re)install
pacman -S python-pip

# #=> 2 encoding - python-pip 1 remove
# pacman -Rs python-pip

# #=> 2 encoding - python-pipx 0 (re)install
# pacman -S python-pipx
#  pipx ensurepath  # maybe not needed

# #=> 2 encoding - python-pipx 1 remove
# pacman -Rs python-pipx

#=> 2 encoding - R
pacman -S r

#=> 2 encoding - Ruby 0
pacman -S ruby

#=> 2 encoding - Ruby 0 IRB
pacman -S ruby-irb

#=> 2 encoding - Ruby 1 documentation
pacman -S ruby-docs ruby-rdoc

#=> 2 encoding - Ruby 2 gems
gem update

#=> 2 encoding - Ruby 3 Jekyll & bundler
gem install bundler jekyll  # takes ages...
true

#=> 2 encoding - selene
# Lua linter
pacman -S selene

#=> 2 fonts
sudo pacman -S adobe-source-code-pro-fonts  # for  Source Code Pro
sudo pacman -S gnu-free-fonts
sudo pacman -S noto-fonts  # for  Firefox  text and  Xfce  window labels
sudo pacman -S noto-fonts-cjk  # for  $MD4PDF/GNULinux/md4pdf.sh
sudo pacman -S ttf-arimo-nerd
sudo pacman -S ttf-cascadia-mono-nerd
sudo pacman -S ttf-croscore
sudo pacman -S ttf-dejavu
sudo pacman -S ttf-hack
sudo pacman -S ttf-hack-nerd
sudo pacman -S ttf-jetbrains-mono-nerd
sudo pacman -S ttf-meslo-nerd
sudo pacman -S ttf-opensans
sudo pacman -S ttf-ubuntu-mono-nerd

#=> 2 system
# supersedes  Bashtop
pacman -S bpytop

# beep
pacman -S beep

# btop
pacman -S btop

# dool
pacman -S dool

# fcron
pacman -S fcron
systemctl enable fcron.service

# glances
pacman -S glances

# GNU time
pacman -S time

# Mesa demos
pacman -S mesa-demos  # probably brings in  mesa

# meson, for auracle later
pacman -S meson

# Pipe Viewer
pacman -S pv

#=> 2 various
# cpanminus
pacman -S cpanminus

# languagetool
pacman -S languagetool  # for the GUI

# Node Package Manager 0 npm install
pacman -S npm

# OpenOffice English thesaurus
pacman -S mythes-en

# pass (brings in gnupg, which brings in pinentry)
pacman -S pass

# Speech Dispatcher
pacman -S speech-dispatcher

# strace - for debugging
pacman -S strace

# for thesaurus_query.vim
pacman -S python-beautifulsoup4

# universal-ctags
pacman -S ctags

# web-ish
pacman -S arch-wiki-docs lynx w3m

# #=> 2 various - Emacs
# pacman -S emacs  # brings in  tree-sitter

# #=> 2 various - GNOME Terminal
# pacman -S gnome-terminal

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

