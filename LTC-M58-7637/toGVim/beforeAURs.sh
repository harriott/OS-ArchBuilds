#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# Updates
# -------
sudo pacman -Syu

# allow dhcpcd without pw
sudo bash -c "cat $( dirname "${BASH_SOURCE[0]}" )/sudoers-dhcpcd >> /etc/sudoers"
sudo visudo -c -f /etc/sudoers
sudo cat /etc/sudoers

# broot
sudo pacman -S broot
broot  # to load  br

# flake8
sudo pacman -S flake8

# LastPass CLI
sudo pacman -S lastpass-cli

# ShellCheck (for bash linting in xVim)
sudo pacman -S shellcheck

# X settings
sudo pacman -S xorg-xset

# xsel
sudo pacman -S xsel

