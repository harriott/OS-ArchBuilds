#!/bin/bash

# $OSAB/bs-5-when_myDrA/TexLive.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -v  # prints each statement here, including comments
shopt -s expand_aliases; alias pikn='pikaur -S --needed --keepbuilddeps'

# #=> 0 native 0 install 0 source online
# cd $ITcop/unix-TL-install-tl-20260611  # will download 6GB of code

#=> 0 native 0 install 0 source local
find $notDr/ircam_fr_pub_CTAN_systems_texlive_tlnet | wc -l
cd $notDr/ircam_fr_pub_CTAN_systems_texlive_tlnet
find /usr/local/texlive | wc -l

# #=> 0 native 0 install 1 basic
# sudo perl install-tl --scheme=basic --no-interaction

#=> 0 native 0 install 1 full
sudo perl install-tl --no-interaction  # sbMb: 2024 online 90m; 2025 local 26m

#=> 0 native 0 install 2 paths
# fix  MANPATH, PATH, INFOPATH  in  $AjB/bashrc-wm

#=> 0 native 0 install 3 save profile
cp /usr/local/texlive/2025/tlpkg/texlive.profile $machLg/TeXLive/install-tl-$(date '+%Y%m%d%H%M').profile

# #=> 0 native 0 install 4 basic - more packages
# sudo tlmgr install currfile
# sudo tlmgr install easylist
# sudo tlmgr install etoolbox
# sudo tlmgr install filehook
# sudo tlmgr install memoir
# sudo tlmgr install polyglossia
# sudo tlmgr install wrapfig
# sudo tlmgr install xetex
# sudo tlmgr install xcolor

#=> 0 native 1 remove
rm -rf ~/.texlive2024
sudo rm -r /usr/local/texlive

#=> 0 Arch packaged 0 install
pikn texlive-most texlive-langchinese texlive-langgreek  # select all
pikn texlive-xetex

#=> 0 Arch packaged 1 remove 0 packages
# sudo pacman -Rs  as per  $machLg/TeXLive/Arch_packages-<date>.txt

#=> 0 Arch packaged 1 remove 1 trailing nodes
for td in texinfo texmf texmf-dist; do sudo rm -r /usr/share/$td; done
sudo rm /usr/share/texmf.cnf
sudo rm -r /etc/texmf
sudo rm -r /var/lib/texmf

#=> 1 max_print_line
# $ABjo/texmf.cnf

