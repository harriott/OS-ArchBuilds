#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 GnuPG
# # create & populate ~/.gnupg
# gpg --list-keys

#=> 1 configure GnuPG for pinentry
# gpg-agent.conf symlink for passphrase
ln -s $ARCHBUILDS/jo/gpg-agent.conf ~/.gnupg/gpg-agent.conf

# pinentry
export GPG_TTY=$(tty)

