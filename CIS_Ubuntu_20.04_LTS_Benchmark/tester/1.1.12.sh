#!/bin/sh

# 1.1.12 "Ensure /var/tmp partition includes the nodev option (Automated)"



mnt_nodev=$(findmnt -n /var/tmp  | grep -v nodev)

echo "mnt_nodev: $mnt_nodev"
echo "expecten: verify that nothing is returned"

if [ "$mnt_nodev" != "" ]; then
    echo "Is not configured"
    exit 1
fi

exit 0