#!/bin/sh


# 1.1.2 "Ensure /tmp is configured (Automated)"


# findmnt -n /tmp

mnt_tmp=$(findmnt -n /tmp)

echo "mnt_tmp: $mnt_tmp"
echo "expecten: verify output shows /tmp is mounted to tmpfs or a system partition"

if [ "$mnt_tmp" != ""]; then
    exit 1
fi

exit 0