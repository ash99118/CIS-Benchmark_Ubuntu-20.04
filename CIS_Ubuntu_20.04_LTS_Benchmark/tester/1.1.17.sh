#!/bin/sh

# 1.1.17 Ensure separate partition exists for /home (Automated)


mnt_dir=$(findmnt /home)

echo "mnt_dir: $mnt_dir"
echo "expecten: verify output shows /home is mounted"

if [ "$mnt_dir" = "" ]; then
    echo "No Mount var"
    exit 1
fi

exit 0
