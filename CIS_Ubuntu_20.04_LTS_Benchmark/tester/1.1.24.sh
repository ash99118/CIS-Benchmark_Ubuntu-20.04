#!/bin/sh

# 1.1.24 Disable USB Storage (Automated)

modp=$(modprobe -n -v usb-storage)

if [ "$modq" != "install /bin/true" ]; then
    echo "$ modprobe -n -v usb-storage"
    echo $modp
    exit 1
fi

lsmodq=$(lsmod | grep usb-storage)

if [ "$lsmodq" != "" ]; then
    echo "lsmod | grep usb-storage"
    echo $lsmodq
    exit 1
fi

exit 0