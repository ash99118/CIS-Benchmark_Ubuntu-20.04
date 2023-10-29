#!/bin/sh

# 1.1.15 "Ensure separate partition exists for /var/log (Automated)"

mnt_dir=$(findmnt /var/log)

echo "mnt_dir: $mnt_dir"
echo "expecten: verify output shows /var/log is mounted"

if [ "$mnt_dir" = "" ]; then
    echo "No Mount var"
    exit 1
fi

exit 0