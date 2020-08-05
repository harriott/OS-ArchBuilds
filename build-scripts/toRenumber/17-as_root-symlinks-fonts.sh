#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>

#=> for fonts

[[ /usr/share/fonts/copiedForArch ]] && rm -r /usr/share/fonts/copiedForArch; ln -s $ITstack/fonts-copiedForArch /usr/share/fonts/copiedForArch

