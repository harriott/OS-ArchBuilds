#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# sed -n '5p' build.sh
# script build-$(date "+%y%m%d-%H%M")

# as root  bash build.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 environment variables
# # these are eventually set in  ~/.xinitrc

#=> 0 Updates
sudo pacman -Syu
true
auracle sync
true

# #=> 1 AUR 0 - make AUR directory
# mkdir ~/Arch
# mkdir ~/Arch/AUR

# #=> 1 AUR 1 preparations

# # #==> Dropbox public key
# # gpg --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

# # #==> Dust - Rust Toolchain
# # # 1 rustup
# # sudo pacman -S rustup

# # # 2 Rust Toolchain
# # rustup toolchain install stable

# #=> 1 AUR 2 AURs

# #==> auracle-git
# cd ~/Arch/AUR
# sudo rm -r auracle-git
# git clone https://aur.archlinux.org/auracle-git.git
# cd auracle-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> bat-extras-git
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/bat-extras-git.git
# cd bat-extras-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> Dropbox
# cd ~/Arch/AUR
# sudo rm -r dropbox
# git clone https://aur.archlinux.org/dropbox.git
# cd dropbox
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> Dust
# # (after Rust Toolchain)
# cd ~/Arch/AUR
# sudo rm -r dust
# git clone https://aur.archlinux.org/dust.git
# cd dust
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> moar
# cd ~/Arch/AUR
# sudo rm -r moar
# git clone https://aur.archlinux.org/moar.git
# cd moar
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> old & unwanted
# git clone https://aur.archlinux.org/bfg.git
# git clone https://aur.archlinux.org/cmus-notify.git
# git clone https://aur.archlinux.org/covid19-cli-git.git
# git clone https://aur.archlinux.org/dragon-drag-and-drop.git
# git clone https://aur.archlinux.org/figlet-fonts.git
# git clone https://aur.archlinux.org/getmail.git
# git clone https://aur.archlinux.org/iscan-plugin-gt-f500.git
# git clone https://aur.archlinux.org/perl-data-printer.git
# git clone https://aur.archlinux.org/perl-clone-pp.git
# git clone https://aur.archlinux.org/photocollage.git
# git clone https://aur.archlinux.org/pnmixer-gtk3.git
# git clone https://aur.archlinux.org/pyfil.git
# git clone https://aur.archlinux.org/python-notify2.git
# git clone https://aur.archlinux.org/tmux-bash-completion.git
# git clone https://aur.archlinux.org/urlview.git
# git clone https://aur.archlinux.org/vim-gruvbox-git.git
# git clone https://aur.archlinux.org/vim-recover-git.git
# git clone https://aur.archlinux.org/vim-repeat.git
# git clone https://aur.archlinux.org/vim-table-mode.git
# git clone https://aur.archlinux.org/xdg-utils-mimeo.git
# git clone https://aur.archlinux.org/xnviewmp.git

# sudo rm -r chromium-widevine; git clone https://aur.archlinux.org/chromium-widevine.git
# sudo rm -r clamav-unofficial-sigs; git clone https://aur.archlinux.org/clamav-unofficial-sigs
# sudo rm -r gtkhash # clone https://aur.archlinux.org/gtkhash.git
# sudo rm -r mimeo; git clone https://aur.archlinux.org/mimeo.git
# sudo rm -r msmtp-oauth2; git clone https://aur.archlinux.org/msmtp-oauth2.git
# sudo rm -r mutt-wizard-git; git clone https://aur.archlinux.org/mutt-wizard-git.git
# sudo rm -r obmenu-generator; git clone https://aur.archlinux.org/obmenu-generator.git

# #===> DroidCam
# cd ~/Arch/AUR
# sudo rm -r droidcam
# git clone https://aur.archlinux.org/droidcam.git
# cd droidcam
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# sudo pacman -Rs droidcam

# #===> gtksu-git
# # to run Timeshift from Menu
# cd ~/Arch/AUR
# sudo rm -r gtksu-git
# git clone https://aur.archlinux.org/gtksu-git.git
# cd gtksu-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #===> Timeshift
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/timeshift.git
# cd timeshift
# gvim PKGBUILD  # (because mimeo identifies it as html)
# makepkg -sic
# cd ~

# sudo pacman -Rs timeshift

# #==> qimgv-git
# cd ~/Arch/AUR
# sudo rm -r qimgv-git
# git clone https://aur.archlinux.org/qimgv-git.git
# cd qimgv-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> Samokovarov's jump
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/jump.git
# cd jump
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> vim Calendar
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-calendar-git.git
# cd vim-calendar-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> vim LanguageTool
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-languagetool.git
# cd vim-languagetool
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> vim-mediawiki
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-mediawiki.git
# cd vim-mediawiki
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> vim-simpylfold
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-simpylfold.git
# cd vim-simpylfold
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> vim Solarized
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/vim-colors-solarized-git.git
# cd vim-colors-solarized-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> vim-undotree
# cd ~/Arch/AUR
# sudo rm -r vim-undotree
# git clone https://aur.archlinux.org/vim-undotree.git
# cd vim-undotree
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> Zoom
# cd ~/Arch/AUR
# sudo rm -r zoom
# git clone https://aur.archlinux.org/zoom.git
# cd zoom
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> 1 AUR 3 settings

#=> 2 symlinks
. $ARCHBUILDS/userSymlinks/jo.sh

# #=> tests
# # default browser
# xdg-open https://archlinux.org

# # espeak-ng-espeak & termdown
# espeak -v fr+f2 "Bonjour tout le monde"

