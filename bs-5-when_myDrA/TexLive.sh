#!/bin/bash
# vim: fdl=1:

# $OSAB/bs-5-when_myDrA/TexLive.sh - TeX Live

exit  # if ever run, because the following commands are best run manually

#=> 0 Arch packaged - install
pikn texlive-most texlive-langchinese texlive-langgreek  # select all
pikn texlive-xetex

#=> 0 native - install
# need to  reboot  when done

#==> 0 source online
# see  $ITcop/unix-TeXLive/get.md

#==> 0 source local
find $notDr/ircam_fr_pub_CTAN_systems_texlive_tlnet | wc -l

#==> 1 basic
sudo perl install-tl --scheme=basic --no-interaction  # minimal

#==> 1 full
sudo perl install-tl --no-interaction
# HPEB840G38: 2026 local 
# sbMb: 2024 online 90m; 2025 local 26m

#==> 2 file count
find /usr/local/texlive | wc -l

#==> 2 logfile
/usr/local/texlive/2026/install-tl.log

#==> 2 paths
# fix  MANPATH, PATH, INFOPATH  in  $AjB/bashrc-wm

#==> 3 save profile
cp /usr/local/texlive/2025/tlpkg/texlive.profile $machLg/TeXLive/install-tl-$(date '+%Y%m%d%H%M').profile

# #==> 4 basic - more packages
# sudo tlmgr install currfile
# sudo tlmgr install easylist
# sudo tlmgr install etoolbox
# sudo tlmgr install filehook
# sudo tlmgr install memoir
# sudo tlmgr install polyglossia
# sudo tlmgr install wrapfig
# sudo tlmgr install xetex
# sudo tlmgr install xcolor

#=> 1 test
# $ITmCP/TeX/LaTeX

#=> 2 Arch packaged - remove 0 packages
# sudo pacman -Rs  as per  $machLg/TeXLive/Arch_packages-<date>.txt

#=> 2 Arch packaged - remove 1 trailing nodes
for td in texinfo texmf texmf-dist; do sudo rm -r /usr/share/$td; done
sudo rm /usr/share/texmf.cnf
sudo rm -r /etc/texmf
sudo rm -r /var/lib/texmf

#=> 2 native - remove
rm -rf ~/.texlive2025
sudo rm -r /usr/local/texlive

