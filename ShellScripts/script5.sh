#!/bin/bash
# Script 5: Open Source Manifesto Generator
# This script takes user input and generates a manifesto

echo "Answer three questions to generate your manifesto:"
echo ""

# Take user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Generate manifesto
echo "On $DATE, I reflect on the importance of open source." >> $OUTPUT
echo "I regularly use $TOOL, which represents the idea of $FREEDOM in technology." >> $OUTPUT
echo "I believe in sharing knowledge freely, and I aspire to build $BUILD for the community." >> $OUTPUT

# Alias concept (for demonstration)
# alias manifesto='./script5.sh'

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
