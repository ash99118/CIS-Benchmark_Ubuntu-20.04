#!/bin/sh

# 1.1.10 "Ensure separate partition exists for /var (Automated)"

mnt_var=$(findmnt /var)

echo "mnt_var: $mnt_var"
echo "expecten: verify output shows /var is mounted"

if [ "$mnt_var" = "" ]; then
    echo "No Mount var"
    exit 1
fi

exit 0