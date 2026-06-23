#!/bin/bash

# bash $OSAB/bs-2-into_X/5-softwares.sh

set -v  # prints each statement here, including comments
shopt -s expand_aliases; alias pikn='pikaur -S --needed --keepbuilddeps'

#=> Alacritty
pikn alacritty

#=> ansifilter
pikn ansifilter

#=> atuin
pikn atuin

#=> bandwhich
pikn bandwhich

#=> batstat-git
pikn -s batstat-git  # battery status

#=> blesh-git
pikn blesh-git

#=> chawan-git
pikn chawan-git

#=> cheat-bin
pikn cheat-bin

#=> chmln.sd
pikn sd

#=> CliFM 0 noto-fonts-emoji
pikn noto-fonts-emoji  # don't work in  urxvt  or  xterm...

#=> CliFM 1 clifm-git
pikn clifm-git  # $AjB/bashrc-console

#=> cloudflare-speed-cli
# (rustup update)
pikn cloudflare-speed-cli

#=> cmatrix
pikn cmatrix

#=> Cmus - configure
[ -d ~/.config/cmus ] || mkdir ~/.config/cmus

# #=> Cmus - cmus 0 install
# pikn cmus

# #=> Cmus - cmus 1 remove
# prs cmus

#=> Cmus - cmus-git
pikn cmus-git

#=> code-minimap-bin
# /usr/share/bash-completion/completions/code-minimap.bash  for  minimap.vim
pikn code-minimap-bin

#=> dalance/pipecolor
cargo install pipecolor

# #=> devtools
# # mkdir /mnt/SD480GSSDPlus/chroot
# pikn devtools  # for package managers

#=> dictd
pikn dictd

#=> dict-moby-thesaurus
pikn dict-moby-thesaurus

#=> didyoumean
# (rustup update)
pikn didyoumean  # provides  dym

#=> diskonaut
pikn diskonaut

#=> dos2unix
pikn dos2unix

#=> downgrade
pikn downgrade  # Arch packages

#=> Dropbox public key
gpg --keyserver keyserver.ubuntu.com --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

#=> Dust
# (rustup update)
pikn dust

#=> figlet-fonts
pikn figlet-fonts  # brings in figlet

#=> fortune-mod
pikn fortune-mod

#=> fping
pikn fping

#=> garabik/grc
# colourised output in terminal
pikn grc

#=> gitleaks
pikn gitleaks

#=> gitui
# (rustup update)
pikn gitui

#=> gping
pikn gping

#=> HTMLHint
pikn htmlhint

#=> human language
# aspell
pikn aspell-en aspell-fr

# hunspell-en_gb
pikn hunspell-en_gb

# ngrammalecte
pikn grammalecte

# nuspell
pikn nuspell

#=> hw
# exFAT utilities
pikn exfatprogs

# hwinfo
pikn hwinfo

# xorg-xev
pikn xorg-xev

#=> igrep
# (rustup update)
pikn igrep

#=> intel-hybrid-codec-driver-git
# for  HPEB840G3x
pikn intel-hybrid-codec-driver-git

#=> julia-bin
pikn julia-bin  # for displaying sixels

#=> librespeed-cli
pikn librespeed-cli

#=> libsixel
pikn libsixel  # for  sixel  graphics

#=> lnav
pikn lnav

#=> lsix-git
pikn lsix-git  # for sixels

#=> MPD
pikn mpd
[ -d ~/.mpd/playlists ] || mkdir -p ~/.mpd/playlists
[ -d ~/music ] || mkdir -p ~/music

#=> MPD - vimpc-git
pikn vimpc-git

#=> mtr
# network diagnostic tool
pikn mtr

#=> nbfc-linux
pikn nbfc-linux  # fan control for  HPEB840G3x

#=> npm 0 configure npm-global
[ -d ~/.npm-global ] ||  mkdir ~/.npm-global
npm config set prefix=$HOME/.npm-global

#=> npm 1 carbonyl
npm i -g carbonyl

#=> npm 1 cspell
npm i -g cspell

#=> npm 1 js-beautify
npm i -g js-beautify

#=> npm 1 mapscii
npm i -g mapscii  # world map in terminal

#=> npm 1 wikit
npm i -g wikit  # open Wikipedia page in browser from terminal

#=> perl-clone-pp
pikn perl-clone-pp  # for  perl-data-printer

#=> perl-data-printer
pikn perl-data-printer  # provides  Data::Printer

#=> pgpdump
pikn pgpdump

#=> Python - gdown
pipx install gdown

#=> Python - proselint
pipx install proselint

#=> Python - radio-active
pipx install radio-active

#=> Python - yaml2toml
pipx install yaml2toml

#=> python-fangfrisch 0 install
pikn python-fangfrisch  # further databases/signatures for  ClamAV

#=> python-fangfrisch 1 configure
# 1 create database structure
sudo -u clamav /usr/bin/fangfrisch --conf /etc/fangfrisch/fangfrisch.conf initdb

# 2 enable systemd timer
sudo systemctl enable fangfrisch.timer --now

#=> rdrview-git
pikn rdrview-git

#=> shell-color-scripts-git
pikn shell-color-scripts-git  # DT's  colorscript -r

#=> spectroterm
pikn spectroterm

#=> speedtest-cli
pikn speedtest-cli

#=> superfile
pikn superfile

#=> system
# gtop
pikn gtop

# python-virtualenvwrapper
pikn python-virtualenvwrapper

# sysstat
pikn sysstat  # brings in  lm_sensors

#=> systemd-resolved
sudo systemctl enable systemd-resolved.service --now

#=> sysz
pikn sysz  # fzf terminal UI for systemctl

#=> tspreed
pikn tspreed

#=> tty-clock-git
pikn tty-clock-git

#=> typos
# (rustup update) for correcting mistakes in source code
pikn typos

#=> vale
pikn vale  # Vale prose linting from cli, also for  ALE

#=> Zellij
pikn zellij

