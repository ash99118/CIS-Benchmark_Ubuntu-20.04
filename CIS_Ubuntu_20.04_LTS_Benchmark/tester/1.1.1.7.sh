#!/bin/sh

# 1.1.1.7 "Ensure mounting of udf filesystems is disabled (Automated)"


mod_udf=$(modprobe -n -v udf | grep -E '(udf|install)')
lsmod_udf=$(lsmod | grep udf)

echo "mod_udf: $mod_udf"
echo "expected: install /bin/true"

echo "lsmod_udf: $lsmod_udf"
echo "expected: "

if [ "$mod_udf" != "install /bin/true" ]; then
    exit 1
fi

if [ "$lsmod_udf" != "" ]; then
    exit 1
fi

exit 0