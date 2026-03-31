#!/bin/bash
# Script 1: System Identity Report
# This script displays basic system information

STUDENT_NAME="Soumya Pandey"
SOFTWARE_CHOICE="python"

# Get system details
KERNEL=$(uname -r)   # Kernel version
USER_NAME=$(whoami)  # Current user
UPTIME=$(uptime -p)  # System uptime
DATE=$(date)         # Current date and time
DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d= -f2 | tr -d '"')

# Display output
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home    : $HOME"
echo "Uptime  : $UPTIME"
echo "Date    : $DATE"
echo "License : GNU General Public License (GPL)"
