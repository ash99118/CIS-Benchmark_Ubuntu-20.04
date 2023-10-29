#!/bin/sh

# 1.1.7 Ensure nodev option set on /dev/shm partition (Automated)


mnt_dev=$(findmnt -n /dev/shm | grep -v nodev)

echo "mnt_dev: $mnt_dev"
echo "expecten: verify output shows /dev.shm is mounted to devfs or a system partition"

if [ "$mnt_dev" != "" ]; then
    echo "mount"
    exit 1
fi

exit 0