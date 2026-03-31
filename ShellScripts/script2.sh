#!/bin/bash
# Script 2: FOSS Package Inspector
#Author: [Soumya Pandey]
# Concept: Uses package manager commands (pacman -Q, pacman -Qi), grep for filtering, and a case statement for conditional output.
# This script checks if a package is installed and shows its details

PACKAGE="python"   # Change this to your chosen software

# Check if package is installed
if pacman -Q $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."

    # Show important package details
    pacman -Qi $PACKAGE | grep -E 'Version|License|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for description
case $PACKAGE in
    python) echo "Python: a powerful, open-source programming language driven by community." ;;
    git) echo "Git: a distributed version control system created to manage code efficiently." ;;
    vlc) echo "VLC: a free and open-source media player that supports almost all formats." ;;
    firefox) echo "Firefox: an open-source browser focused on privacy and freedom." ;;
    *) echo "This package is part of the open-source ecosystem." ;;
esac
