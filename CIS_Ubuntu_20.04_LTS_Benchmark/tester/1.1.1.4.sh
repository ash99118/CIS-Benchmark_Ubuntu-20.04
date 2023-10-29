#!/bin/sh

# 1.1.1.4 "Ensure mounting of hfs filesystems is disabled (Automated)"

# # modprobe -n -v hfs | grep -E '(hfs|install)'
# install /bin/true
# # lsmod | grep hfs
# <No output>

mod_hfs=$(modprobe -n -v hfs | grep -E '(hfs|install)')
lsmod_hfs=$(lsmod | grep hfs)

echo "mod_hfs: $mod_hfs"
echo "expected: install /bin/true"

echo "lsmod_hfs: $lsmod_hfs"
echo "expected: "

if [ "$mod_hfs" != "install /bin/true" ]; then
    exit 1
fi

if [ "$lsmod_hfs" != "" ]; then
    exit 1
fi

exit 0