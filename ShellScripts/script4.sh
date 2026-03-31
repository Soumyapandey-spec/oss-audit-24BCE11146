#!/bin/bash
# Script 4: Log File Analyzer
#Author: [Soumya Pandey]
# Concept: Uses command-line arguments, default values, while-read loop, grep, tail, and error handling to analyze log files.
# This script counts occurrences of a keyword in a log file

LOGFILE=$1                 # First argument = log file
KEYWORD=${2:-"error"}      # Second argument (default = error)
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Check if file is empty (retry-like behavior)
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. Please try again later."
    exit 1
fi

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Print result
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Show last 5 matching lines
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
