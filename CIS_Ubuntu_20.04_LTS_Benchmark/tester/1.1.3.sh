#!/bin/sh

# 1.1.3 Ensure nodev option set on /tmp partition (Automated)

mnt_nodev=$(findmnt -n /tmp | grep -v nodev)

echo "mnt_nodev: $mnt_nodev"
echo "expecten: verify output shows /tmp is mounted to tmpfs or a system partition"

if [ "$mnt_nodev" != "" ]; then
    echo "No mount"
    exit 1
fi

exit 0

