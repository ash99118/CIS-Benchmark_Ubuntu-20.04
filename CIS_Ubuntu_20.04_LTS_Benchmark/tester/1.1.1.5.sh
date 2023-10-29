#!/bin/sh

# 1.1.1.5 "Ensure mounting of hfsplus filesystems is disabled (Automated)"


mod_hfsplus=$(modprobe -n -v hfsplus | grep -E '(hfsplus|install)')
lsmod_hfsplus=$(lsmod | grep hfsplus)

echo "mod_hfsplus: $mod_hfsplus"
echo "expected: install /bin/true"

echo "lsmod_hfsplus: $lsmod_hfsplus"
echo "expected: "

if [ "$mod_hfsplus" != "install /bin/true" ]; then
    exit 1
fi

if [ "$lsmod_hfsplus" != "" ]; then
    exit 1
fi

exit 0