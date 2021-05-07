#!/bin/bash
# vim: fdl=1:

# bash <this_script>

# check  http://time.is/  to see how much stray
sudo ntpd -qg
sudo hwclock --systohc

