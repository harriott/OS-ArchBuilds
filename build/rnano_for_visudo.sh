#!/bin/bash
# vim: set et tw=0:

# sudo bash -x <thisfile>.sh

echo >> /etc/sudoers
echo "# use restricted version of nano instead of vi with visudo" >> /etc/sudoers
echo "Defaults editor=/usr/bin/rnano"
