#!/bin/bash
# vim: set fdl=1 sw=2:

# after  $bs/2-to_X/2-git-remote1.sh

#=> 0 check USB drive
Us=/au/GHssh
if [ ! -d $Us ]; then
  echo "$Us ain't there..."
  exit
fi

#=> 1 private gitconfig
cp $Us/gitconfig-JH ~/gitconfig-JH

#=> 1 SSH keys
skd=~/.ssh
[ -d $skd ] || mkdir $skd
id=id_ed25519-forGitHub
cp $Us/$id $skd/$id
cp $Us/$id.pub $skd/$id.pub
s ~/.ssh/*
echo "chmod 600 ~/.ssh/$id  if necessary"
cp $Us/SSHconfig $skd/config

