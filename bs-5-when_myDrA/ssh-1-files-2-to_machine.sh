#!/bin/bash
# vim: set fdl=1 sw=2:

# $OSAB/bs-5-when_myDrA/ssh-1-files-2-to_machine.sh
#  after  $OSAB/bs-5-when_myDrA/ssh-1-files-1-to_USB.sh
#   on the new machine, from the directory  $s
#    bash files-to_machine.sh

set -v  # prints each statement here, including comments

#=> gitconfig-JH
cp gitconfig-JH ~/gitconfig-JH  # would need temporary change in  $machBld/jo/gitconfig

#=> ~/.ssh 0 make
skd="~/.ssh"
  [ -d $skd ] || mkdir $skd

#=> ~/.ssh 1 keys for GitHub
id=id_ed25519-forGitHub
  cp $id $skd/$id
    chmod 600 $skd/$id
  cp $id.pub $skd/$id.pub
  s ~/.ssh/*

#=> ~/.ssh 2 configuration
cp $cITCP/networking-SSHconfig/$host $skd/config

