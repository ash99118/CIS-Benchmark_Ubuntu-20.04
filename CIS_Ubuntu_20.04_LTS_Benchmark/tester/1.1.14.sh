#!/bin/sh

# 1.1.14 Ensure /var/tmp partition includes the noexec option (Automated)

findmnt_dir=$(findmnt -n /var/tmp  | grep -v noexec)

echo "findmnt_dir: $findmnt_dir"
echo "expecten: verify that nothing is returned"

if [ "$findmnt_dir" != "" ]; then
    echo "Is not configured"
    exit 1
fi

exit 0