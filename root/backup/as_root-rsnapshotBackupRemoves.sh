#!/bin/bash
# vim: set sw=2:
# $ulL/Bash/Scratch.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -v  # prints each statement here, including comments

rm -rv hourly.1
rm -rv hourly.0
