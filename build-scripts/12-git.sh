#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=sh.shfold:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 SSH keys
mkdir ~/.ssh
cp /mm/id_rsa-trohib ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
cp /mm/id_rsa-trohib.pub ~/.ssh/id_rsa.pub
ls -l ~/.ssh

#=> 1 first SSH to GitHub
ssh -T git@github.com  # "yes"
cat ~/.ssh/known_hosts
cp ~/.ssh/known_hosts /mm/k86-known_hosts

