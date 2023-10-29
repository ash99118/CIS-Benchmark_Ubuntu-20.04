#!/bin/sh

# 1.1.16 Ensure separate partition exists for /var/log/audit (Automated)


mnt_dir=$(findmnt /var/log/audit)

echo "mnt_dir: $mnt_dir"
echo "expecten: verify output shows /var/log/audit is mounted"

if [ "$mnt_dir" = "" ]; then
    echo "No Mount var"
    exit 1
fi

exit 0