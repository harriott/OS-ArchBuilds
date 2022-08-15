#!/bin/bash

#=> 0 $ARCHBUILDS
# check  $ARCHBUILDS/Bash/export-storage  has leveraged  /ArchBuilds
echo "\$ARCHBUILDS is $ARCHBUILDS"
read -p "- looks good?"

#=> 1 go slow
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 2 file manage
# # broot
# pacman -S broot
# broot # to generate br command
# echo "${tpfn}"  # reset normal text

# # dvd+rw-tools
# pacman -S dvd+rw-tools

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

# #=> 2 hd
# # hdparm
# pacman -S hdparm

# # NTFS-3G
# pacman -S ntfs-3g

# # udiskie
# pacman -S udiskie

# # weekly TRIM
# # systemctl status fstrim.timer
# systemctl enable fstrim.timer --now

# #=> 2 info
# # Bashtop
# pacman -S bashtop  # later superseded by AUR bpytop

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

# #=> 2 networking
# # isync
# pacman -S isync  # for mbsync

# # netcat - for network connection tests
# pacman -S openbsd-netcat

# # NetworkManager
# pacman -S networkmanager

# # tcpdump
# pacman -S tcpdump  # for packet analysis

# # Wget
# pacman -S wget

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

# #=> 2 system
# # btop
# pacman -S btop

# # fcron
# pacman -S fcron
# systemctl enable fcron.service

# # glances
# pacman -S glances

# # Mesa demos
# pacman -S mesa-demos

# # meson, for auracle later
# pacman -S meson

# # Pipe Viewer
# pacman -S pv

# #=> 2 various
# # universal-ctags
# pacman -S ctags

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

# # web-ish
# pacman -S arch-wiki-docs lynx w3m

# #=> 2 swappiness to 10
# # check the default
# sysctl vm.swappiness
# # show that  /etc/sysctl.d  is empty
# ls /etc/sysctl.d
# # fix lower value, which will become effective after reboot
# echo "vm.swappiness=00" > /etc/sysctl.d/99-sysctl.conf
# cat /etc/sysctl.d/99-sysctl.conf

#=> 2 users
# activate wheel group
sed -i '0,/%wheel/ s/^# %wheel/%wheel/' /etc/sudoers
grep wheel /etc/sudoers
# check that  /etc/sudoers  parses OK
visudo -c -f /etc/sudoers

# User jo, creating the home directory and adding to group wheel
useradd -m -G wheel jo
until passwd jo; do echo "try again"; done
cat /etc/passwd

#=> 3 doas
pacman -S opendoas
cp $ARCHBUILDS/etc/doas.conf /etc/doas.conf
chmod -c 0400 /etc/doas.conf
# after a reboot, test with  doas updatedb

#=> 3 Rootkit Hunter
pacman -S rkhunter

#=> 4 end
# you're ready to reboot and login to jo

