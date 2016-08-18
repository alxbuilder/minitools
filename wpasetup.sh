#!/bin/bash
#(@) Set up a wireless connection from the command line
# https://blog-alxbuilder.rhcloud.com/wireless-config-without-a-gui/
# License GPLv2 or later

export INTERFACE=wlan0
export MYNETWORK='somenetwork'
export CREDSFILE=~/${MYNETWORK}.wpa
export PASSWORD='Not telling you'

echo $PASSWORD |wpa_passphrase $MYNETWORK > $CREDSFILE

wpa_supplicant -i$INTERFACE -c$CREDSFILE -dB
dhclient -v $INTERFACE
