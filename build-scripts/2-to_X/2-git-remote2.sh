#!/bin/bash
# vim: set fdl=1 sw=2:

# after  $bSc/2-to_X/2-git-remote1.sh
# to be run from  GHssh/

set -v  # prints each statement here, including comments

#=> private gitconfig
cp gitconfig-JH ~/gitconfig-JH

#=> SSH keys
skd=~/.ssh
[ -d $skd ] || mkdir $skd
id=id_ed25519-forGitHub
cp $id $skd/$id
chmod 600 $skd/$id
cp $id.pub $skd/$id.pub
s ~/.ssh/*
cp SSHconfig $skd/config

