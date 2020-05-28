#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> AUR 0 - make AUR directory
# mkdir ~/Arch
# mkdir ~/Arch/AUR

# #=> AUR 1 preparations

# # #==> Dropbox public key
# # gpg --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

# # #==> Dust - Rust Toolchain
# # # 1 rustup
# # sudo pacman -S rustup

# # # 2 Rust Toolchain
# # rustup toolchain install stable

# #=> AUR 2 AURs

# #==> 8192eu-dkms - install
# # needs  appmenu-gtk-module dkms linux-headers
# cd ~/Arch/AUR
# rm -fr 8192eu-dkms # (-f is needed for some weird files therein)
# git clone https://aur.archlinux.org/8192eu-dkms.git
# cd 8192eu-dkms
# xdg-open PKGBUILD
# makepkg -sic
# cd ~
# # reboot !
# true

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
# sudo rm -r bat-extras-git
# git clone https://aur.archlinux.org/bat-extras-git.git
# cd bat-extras-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> chromium-widevine
# cd ~/Arch/AUR
# sudo rm -r chromium-widevine
# git clone https://aur.archlinux.org/chromium-widevine.git
# cd chromium-widevine
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> colorpicker
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/colorpicker.git
# cd colorpicker
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

#==> Dropbox
cd ~/Arch/AUR
sudo rm -r dropbox
git clone https://aur.archlinux.org/dropbox.git
cd dropbox
xdg-open PKGBUILD
makepkg -sic
cd ~

# #==> Dust
# # (after Rust Toolchain)
# cd ~/Arch/AUR
# sudo rm -r dust
# git clone https://aur.archlinux.org/dust.git
# cd dust
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> Event Calendar
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/plasma5-applets-eventcalendar.git
# cd plasma5-applets-eventcalendar
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> Fangfrisch
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/python-fangfrisch.git
# cd python-fangfrisch
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> moar
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/moar.git
# sudo rm -r moar
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

# #===> 8192eu-dkms - remove
# sudo pacman -Rs 8192eu-dkms
# reboot !
# true

# #===> rtl8192eu
# cd ~/Arch/AUR
# sudo rm -r rtl8192eu
# git clone https://aur.archlinux.org/rtl8192eu.git
# cd rtl8192eu
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

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

# #==> xbindkeys
# # for mouse middle click
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/xbindkeys.git
# cd xbindkeys
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

# #=> AUR 3 settings

# #==> 8192eu - blacklist rtl8xxxu
# echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf

# #==> Fangfrisch 2 settings
# # 1 create database structure
# sudo -u clamav /usr/bin/fangfrisch --conf /etc/fangfrisch/fangfrisch.conf initdb

# # 2 enable systemd timer
# sudo systemctl enable fangfrisch.timer

# #=> broot
# broot  # to load  br

# #=> vims
# # gVim
# cd ~
# git clone git@github.com:harriott/vimfiles.git
# mv vimfiles .vim

# # neovim
# mkdir ~/.config/nvim

