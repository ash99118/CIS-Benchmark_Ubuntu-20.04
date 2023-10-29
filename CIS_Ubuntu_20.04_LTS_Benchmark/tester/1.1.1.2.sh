#!/bin/sh

# 1.1.1.2 "Ensure mounting of freevxfs filesystems is disabled (Automated)"

mod_freevxfs=$(modprobe -n -v freevxfs | grep -E '(freevxfs|install)')
echo "mod_freevxfs: $mod_freevxfs"
echo "expected \"install /bin/true\""

lsmod_freevxfs=$(lsmod | grep freevxfs)
echo "lsmod_freevxfs: $lsmod_freevxfs"
echo "expected \"\""

if [ "$mod_freevxfs" != "install /bin/true" ]; then
    exit 1
fi

if [ "$lsmod_freevxfs" != "" ]; then
    exit 1
fi


exit 0