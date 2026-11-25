#!/bin/bash
# Author: Tanmay Mishra | Roll No: 2601730174

echo "================================"
echo "System Report - Tanmay Mishra"
echo "Roll No: 2601730174"
echo "Date: $(date)"
echo "================================"

echo "CPU Information:"
lscpu | grep -E 'Model name|CPU\(s\)' | head -2

echo "Memory Information:"
free -h | awk '/Mem:/ {print "Total: "$2, "Used: "$3}'

echo "Top 3 CPU Processes:"
ps aux --sort=-%cpu | head -4

echo "Report generated successfully."
