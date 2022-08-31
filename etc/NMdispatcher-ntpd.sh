#! /bin/sh

# to be placed in  /etc/NetworkManager/dispatcher.d
# implemented by my  $bSc/37-as_root-NMdispatcher.sh

if [ "$2" = "up" ]; then
    sudo -u jo DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify "checking time with NTP daemon"
    #  su jo -c 'DISPLAY=:0 dunstify "checking time with NTP daemon"'
    ntpd -qg
    hwclock --systohc
fi  # $2  is provided by  NetworkManager-dispatcher.service

