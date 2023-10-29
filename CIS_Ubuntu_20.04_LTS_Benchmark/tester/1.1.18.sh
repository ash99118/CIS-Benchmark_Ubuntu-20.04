#!/bin/sh

# 1.1.18 Ensure /home partition includes the nodev option (Automated)


mnt_nodev=$(findmnt -n /home | grep -v nodev)

echo "mnt_nodev: $mnt_nodev"
echo "expecten: verify that nothing is returned"

if [ "$mnt_nodev" != "" ]; then
    echo "Is not configured"
    exit 1
fi

exit 0