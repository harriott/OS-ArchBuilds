#! /bin/sh

# $OSAB/nodes-etc/NMdispatcher-ntpd.sh ($OSAB/bs-4-whenWM/1-softwares.sh)
#  r /etc/NetworkManager/dispatcher.d

if [ "$2" = "up" ]; then
    # sudo -u jo DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify "checking time with NTP daemon"
    #  su jo -c 'DISPLAY=:0 dunstify "test of  dunstify  to  0"'
    sudo -u jo DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send "checking time with NTP daemon"
    #  su jo -c 'DISPLAY=:0 notify-send "test of  notify-send  to  0"'
    ntpd -qg
    hwclock --systohc
fi  # $2  is provided by  NetworkManager-dispatcher.service

