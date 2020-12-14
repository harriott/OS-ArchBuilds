#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash build.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 environment variables
# # if  ~/.xinitrc  hasn't been run

# ARCHBUILDS=/home/jo/Dropbox/JH/IT_stack/onGitHub/ArchBuilds
#     MACHINE=$ARCHBUILDS/LTC-M58-7637; echo $MACHINE

# #=> 1 SSH keys
# mkdir ~/.ssh
# cp $( dirname "${BASH_SOURCE[0]}" )/id_rsa-deauram ~/.ssh/id_rsa
# cp $( dirname "${BASH_SOURCE[0]}" )/id_rsa-deauram.pub ~/.ssh/id_rsa.pub

# # ssh/id_rsa permission
# chmod 600 ~/.ssh/id_rsa

