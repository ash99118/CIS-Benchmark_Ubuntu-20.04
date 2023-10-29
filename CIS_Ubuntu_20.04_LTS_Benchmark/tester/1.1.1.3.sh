#!/bin/sh

# 1.1.1.3 "Ensure mounting of jffs2 filesystems is disabled (Automated)"


mod_jffs2=$(modprobe -n -v jffs2 | grep -E '(jffs2|install)')
lsmod_jffs2=$(lsmod | grep jffs2)

echo "mod_jfss2: $mod_jfss2"
echo "expected: install /bin/true"

if [ "$mod_jfss2" != "install /bin/true" ]; then
    exit 1
fi


echo "lsmod_jffs2: $lsmod_jffs2"
echo "expected: "

if [ "$lsmod_jffs2" != "" ]; then
    exit 1
fi



exit 0

