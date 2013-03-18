#!/bin/bash

# add the following line to /etc/rc.local to invoke the script automatically on boot
# screen -AmdS bitkey bash -i /home/pi/bitkey-python/bitkey-rpi-eth.sh

# load kernel modules for spi communication
modprobe spi_bcm2708
modprobe spidev

# chdir into script location
cd `dirname $0`

# run bitkey daemon
./src/bitkey.py -s -t socket -p 0.0.0.0:2000
