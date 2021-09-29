#!/bin/bash
# vim: set fdl=1 sw=2:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 get misc
# git clone git@github.com:harriott/misc.git  # .git/config > %s//gh/

#=> 0 SSH keys
mkdir ~/.ssh
id_ed25519-forGitHub
cp /mm/id_rsa-trohib ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
cp /mm/id_rsa-trohib.pub ~/.ssh/id_rsa.pub
ls -l ~/.ssh

#=> 1 first SSH to GitHub
ssh -T git@github.com  # "yes"
cat ~/.ssh/known_hosts
cp ~/.ssh/known_hosts /mm/k86-known_hosts

