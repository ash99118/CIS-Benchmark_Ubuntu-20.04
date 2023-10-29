#!/bin/sh

# 1.1.22 Ensure sticky bit is set on all world-writable directories (Automated)

world_writable_directories=$(df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null)

echo "world_writable_directories: "
echo $world_writable_directories

if [ "$world_writable_directories" != "" ]; then
    echo "World writable directories exist"
    exit 1
fi

exit 0