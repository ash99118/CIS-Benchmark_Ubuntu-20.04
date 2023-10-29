#!/bin/sh

# 1.1.23 "Disable Automounting (Automated)"


autpfs_status=$(dpkg -s autofs)

echo $autpfs_status

if  $(dpkg -s autofs 2>&1 | grep -q "is not installed") ; then
    echo "Not installed autpfs"
    exit 0
else
    echo "Installed autpfs"
    exit 1
fi