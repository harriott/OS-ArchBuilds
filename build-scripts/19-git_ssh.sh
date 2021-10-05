#!/bin/bash
# vim: set fdl=1 sw=2:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 check configuration
git config -l

#=> 1 first SSH to GitHub
ssh -T git@github.com  # "yes"
cat ~/.ssh/known_hosts
cp ~/.ssh/known_hosts ~/known_hosts-la5

