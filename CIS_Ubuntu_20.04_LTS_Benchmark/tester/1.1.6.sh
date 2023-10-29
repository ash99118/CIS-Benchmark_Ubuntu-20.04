#!/bin/sh

# 1.1.6 Ensure /dev/shm is configured (Automated)

mnt_dev=$(findmnt -n /dev/shm)

echo "mnt_dev: $mnt_dev"
echo "expecten: verify output shows /dev.shm is mounted to devfs or a system partition"

if [ "$mnt_dev" = "" ]; then
    echo "/dev/shm is not mounted"
    exit 1
fi

exit 0