#!/bin/bash
# vim: set fdl=1 sw=2:

# after  $OSAB/bs-2-to_X/2-git-ssh-1.sh,
# from the directory  $s  defined therein, bash $OSAB/bs-2-to_X/2-git-ssh-2.sh

set -v  # prints each statement here, including comments

#=> gitconfig-JH
cp gitconfig-JH ~/gitconfig-JH  # pb ~/gitconfig-JH

#=> ~/.ssh 0 make
skd=~/.ssh
  [ -d $skd ] || mkdir $skd

#=> ~/.ssh 1 keys for GitHub
id=id_ed25519-forGitHub
  cp $id $skd/$id
    chmod 600 $skd/$id
  cp $id.pub $skd/$id.pub
  s ~/.ssh/*

#=> ~/.ssh 2 configuration
cp SSHconfig $skd/config  # cp $CrPl/networking/SSHconfig/sbMb ~/.ssh/config

