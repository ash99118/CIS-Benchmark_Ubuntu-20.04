#!/bin/sh

# 1.1.1.1 "Ensure mounting of cramfs filesystems is disabled (Automated)"


mod_cramfs=$(modprobe -n -v cramfs | grep -E '(cramfs|install)')

echo "modprobe cramfs: $mod_cramfs"
echo "espected: \"install /bin/true\""

lsmod_cramfs=$(lsmod | grep cramfs)
echo "modprobe cramfs: $lsmod_cramfs"
echo "espected: \"\""


if [ "$mod_cramfs" != "install /bin/true" ]; then
    exit 1
fi

if [ "$lsmod_cramfs" != "" ]; then
    exit 1
fi

exit 0