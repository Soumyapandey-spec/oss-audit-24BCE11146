#!/bin/bash
# Script 1: System Identity Report
#Author: [Soumya Pandey]
# This script displays basic system information
# Concept: Uses system commands (uname, whoami, uptime, date) and text processing (grep, cut) to display system identity information.

STUDENT_NAME="Soumya Pandey"
SOFTWARE_CHOICE="python"

# Get system details
KERNEL=$(uname -r)   
USER_NAME=$(whoami)  
UPTIME=$(uptime -p)  
DATE=$(date)         
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
