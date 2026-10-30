#!/bin/bash

# HPE Morpheus Lab - System Information Script
# Displays basic information about a Linux machine.

set -e

echo "========================================"
echo "     Morpheus Lab - System Information"
echo "========================================"
echo "Hostname: $(hostname)"
echo "Operating System: $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '\"')"
echo "Kernel: $(uname -r)"
echo "IP Addresses: $(hostname -I 2>/dev/null || true)"
echo ""
echo "Memory:"
free -h
echo ""
echo "Disk Space:"
df -h /
echo ""
echo "System Uptime:"
uptime -p
echo ""
echo "Script completed successfully."
