#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 SSH keys
# mkdir ~/.ssh
# cp /bs/id_rsa-jharr ~/.ssh/id_rsa
# chmod 600 ~/.ssh/id_rsa
# cp /bs/id_rsa-jharr.pub ~/.ssh/id_rsa.pub

#=> 1 first SSH to GitHub
ssh -T git@github.com  # "yes"
cp ~/.ssh/known_hosts /bs/known_hosts  # check the contents

#=> 2 make ArchBuilds directory
mkdir ~/Arch
cd ~/Arch
git clone git@github.com:harriott/ArchBuilds.git

