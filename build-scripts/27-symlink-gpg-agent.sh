#!/bin/bash

# bash <thisfile>.sh

ln -sf $ARCHBUILDS/jo/gpg-agent.conf  ~/.gnupg/gpg-agent.conf

find ~ -mindepth 2 -maxdepth 2 -type l -ls

