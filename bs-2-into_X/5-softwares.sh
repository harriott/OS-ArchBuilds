#!/bin/bash

# bash $OSAB/bs-2-into_X/5-softwares.sh

set -v  # prints each statement here, including comments
# prs  defined in  $AjB/bashrc-console
shopt -s expand_aliases; alias pikn='pikaur -S --needed --keepbuilddeps'

#=> $TERM
pikn alacritty  # Alacritty
pikn kitty

#=> audio
pikn spectroterm

#==> Cmus
[ -d ~/.config/cmus ] || mkdir ~/.config/cmus
# pikn cmus
pikn cmus-git

#==> MPD
pikn mpd
[ -d ~/.mpd/playlists ] || mkdir -p ~/.mpd/playlists
[ -d ~/music ] || mkdir -p ~/music

#==> MPD - vimpc-git
pikn vimpc-git

#=> cheat-bin
pikn cheat-bin

#=> code-minimap-bin
# /usr/share/bash-completion/completions/code-minimap.bash  for  minimap.vim
pikn code-minimap-bin

#=> documenting
pikn dict-moby-thesaurus
pikn dictd
pikn vale  # Vale prose linting from cli, also for  ALE

#==> human language
pikn aspell-en aspell-fr
pikn hunspell-en_gb
pikn grammalecte
pikn nuspell

#=> file contents
pikn ansifilter
pikn dos2unix
pikn htmlhint  # HTMLHint
pikn sd  # chmln.sd
pikn tspreed  # words of a text at preferred speed

#=> file manage
pikn gitleaks
pikn superfile

#==> CliFM 0 noto-fonts-emoji
pikn noto-fonts-emoji  # don't work in  urxvt  or  xterm...

#==> CliFM 1 clifm-git
pikn clifm-git  # $AjB/bashrc-console

#=> hw
pikn -s batstat-git  # battery status
pikn diskonaut
pikn exfatprogs  # exFAT utilities
pikn hwinfo
pikn xorg-xev

#==> for  HPEB840G3x
pikn intel-hybrid-codec-driver-git
pikn nbfc-linux  # fan control for  HPEB840G3x

#=> network
pikn bandwhich
pikn mtr  # network diagnostic tool

#=> npm 0 configure npm-global
[ -d ~/.npm-global ] ||  mkdir ~/.npm-global
npm config set prefix=$HOME/.npm-global

#=> npm 1 packages
npm i -g carbonyl
npm i -g cspell
npm i -g js-beautify
npm i -g mapscii  # world map in terminal
npm i -g wikit  # open Wikipedia page in browser from terminal

# #=> packages
# pikn downgrade  # Arch packages

# #==> devtools
# # mkdir /mnt/SD480GSSDPlus/chroot
# pikn devtools  # for package managers

#=> Perl modules
pikn perl-clone-pp  # for  perl-data-printer
pikn perl-data-printer  # provides  Data::Printer

#=> Python
pikn python-virtualenvwrapper

#==> Python modules
pipx install gdown
pipx install proselint
pipx install radio-active
pipx install yaml2toml

#=> Rust 0 rustup
rustup update

#=> Rust 1 crates
cargo install pipecolor  # dalance/pipecolor
pikn cloudflare-speed-cli
pikn didyoumean  # provides  dym
pikn dust
pikn gitui
pikn igrep
pikn typos  # for correcting mistakes in source code

#=> security
pikn pgpdump  # OpenPGP packet visualizer

#==> python-fangfrisch 0 install
pikn python-fangfrisch  # further databases/signatures for  ClamAV

#==> python-fangfrisch 1 configure
# 1 create database structure
sudo -u clamav /usr/bin/fangfrisch --conf /etc/fangfrisch/fangfrisch.conf initdb

# 2 enable systemd timer
sudo systemctl enable fangfrisch.timer --now

#=> shell
pikn atuin
pikn blesh-git
pikn cmatrix
pikn figlet-fonts  # brings in figlet
pikn fortune-mod
pikn grc  # garabik/grc - colourised output in terminal
pikn julia-bin  # for displaying sixels
pikn libsixel  # for  sixel  graphics
pikn lsix-git  # for sixels
pikn shell-color-scripts-git  # DT's  colorscript -r
pikn tty-clock-git
pikn zellij  # Zellij

#=> system
pikn gtop
pikn lnav  # Logfile Navigator
pikn sysstat  # brings in  lm_sensors
pikn sysz  # fzf terminal UI for systemctl

#=> WAN
gpg --keyserver keyserver.ubuntu.com --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E  # Dropbox public key
pikn chawan-git
pikn fping
pikn gping
pikn librespeed-cli
pikn rdrview-git  # extract the main content from a webpage
pikn speedtest-cli
sudo systemctl enable systemd-resolved.service --now

