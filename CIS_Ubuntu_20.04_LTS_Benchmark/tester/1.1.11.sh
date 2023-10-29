#!/bin/sh

# 1.1.11 "Ensure separate partition exists for /var/tmp (Automated)"

mnt_var=$(findmnt /var/tmp)

echo "mnt_var: $mnt_var"
echo "expecten: verify output shows /var/tmp is mounted"

if [ "$mnt_var" = "" ]; then
    echo "No Mount var tmp"
    exit 1
fi

exit 0