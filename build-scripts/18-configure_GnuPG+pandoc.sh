#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

# bash <thisfile>.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 GnuPG directory
# # create & populate ~/.gnupg
# gpg --list-keys

#=> 0 Pandoc directory
mkdir -p ~/.pandoc/defaults

# #=> 1 configure GnuPG for pinentry
# # gpg-agent.conf symlink for passphrase
# ln -s $ARCHBUILDS/jo/gpg-agent.conf ~/.gnupg/gpg-agent.conf

# # pinentry
# export GPG_TTY=$(tty)

