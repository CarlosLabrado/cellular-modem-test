#!/bin/bash


# Huawei
#usb_modeswitch -v 12d1 -p 14fe --verbose -J

# ZTE
#usb_modeswitch -v 19d2 -p fff5 --verbose -K

# NEw
#usb_modeswitch -v 1199 -p 68a3 --verbose -S

# with auto disabled
usb_modeswitch -v 1199 -p 7000 --verbose -S

echo "Running lsusb to show all connected USB PID/VID pairs"
lsusb

 ./wvdial_auto_reconnect.sh &

# Add your application start code from this point onwards

while :
do
	echo "Running..."
	sleep 60
done
