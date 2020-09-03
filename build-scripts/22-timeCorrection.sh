#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <this_script>

xdg-open http://time.is/ # to see how much stray
sudo ntpd -qg
sudo hwclock --systohc

