#!/bin/bash

# install arduino-cli from github using:
#  curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh

# if Linux, to set up:
#  sudo dpkg --add-architecture i386
#  sudo apt install libc6-i386

# exit if any errors encountered
set -e

OUTPUT=/tmp/build-catena4618m201_simple

# make sure everything is clean
if [[ "$1" = "--clean" ]]; then
    rm -rf "$OUTPUT"
fi

# do a build
arduino-cli compile \
    -b mcci:stm32:mcci_catena_4618:\
upload_method=DFU,\
xserial=usb,\
sysclk=hsi16m,\
opt=osstd,\
lorawan_region=us915,\
lorawan_network=ttn,\
lorawan_subband=default \
    --build-path "$OUTPUT" \
    --libraries libraries \
    sketches/catena4618m201_simple/catena4618m201_simple.ino
