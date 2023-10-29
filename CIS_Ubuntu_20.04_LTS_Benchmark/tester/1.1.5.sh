#!/bin/sh

# 1.1.5 Ensure noexec option set on /tmp partition (Automated)

mnt_noexec=$(findmnt -n /tmp | grep -v noexec)

echo "mnt_noexec: $mnt_noexec"
echo "expecten: verify output shows /tmp is mounted to tmpfs or a system partition"

if [ "$mnt_noexec" != "" ]; then
    echo "No mount"
    exit 1
fi

exit 0