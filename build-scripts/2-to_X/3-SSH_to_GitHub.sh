#!/bin/bash
# vim: set fdl=1 sw=2:

# after  $CP/encoding/git/remote2.sh

set -ev
trap read debug  # puts a read request after each executable line

#=> 0 check configuration
git config -l

#=> 1 first SSH to GitHub
# should see:  RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
ssh -T git@github.com  # "yes"
cat ~/.ssh/known_hosts
cp ~/.ssh/known_hosts ~/known_hosts-m8f

