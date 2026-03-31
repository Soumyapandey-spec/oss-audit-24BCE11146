#!/bin/bash
# Script 3: Disk and Permission Auditor
# This script checks size, owner and permissions of important directories

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking config directory for selected software..."

# Change this according to your software
CONFIG_DIR="etc/python/"

if [ -d "$CONFIG_DIR" ]; then
    ls -ld $CONFIG_DIR
else
    echo "Config directory $CONFIG_DIR not found"
fi
