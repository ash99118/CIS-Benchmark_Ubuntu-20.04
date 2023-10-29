#!/bin/sh

# 1.1.4 Ensure nosuid option set on /tmp partition (Automated)

mnt_nosuid=$(findmnt -n /tmp | grep -v nosuid)

echo "mnt_nosuid: $mnt_nosuid"
echo "expecten: verify output shows /tmp is mounted to tmpfs or a system partition"

if [ "$mnt_nosuid" != "" ]; then
    echo "No mount"
    exit 1
fi

exit 0
