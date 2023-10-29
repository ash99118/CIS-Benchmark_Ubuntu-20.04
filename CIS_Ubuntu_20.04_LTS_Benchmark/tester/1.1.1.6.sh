#!/bin/sh

# 1.1.1.6 "Ensure mounting of squashfs filesystems is disabled (Manual)"


mod_squashfs=$(modprobe -n -v squashfs | grep -E '(squashfs|install)')
lsmod_squashfs=$(lsmod | grep squashfs)

echo "mod_squashfs: $mod_squashfs"
echo "expected: install /bin/true"

echo "lsmod_squashfs: $lsmod_squashfs"
echo "expected: "

if [ "$mod_squashfs" != "install /bin/true" ]; then
    exit 1
fi

if [ "$lsmod_squashfs" != "" ]; then
    exit 1
fi

exit 0


