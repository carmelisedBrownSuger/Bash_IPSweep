# ipsweep

A simple Bash script to discover active hosts on a given subnet by sending ICMP echo requests (pings).  

## Features
- Scans all hosts in a `/24` subnet (1–254).
- Parallelized pinging for faster results.
- Minimal and easy-to-use script.

## Usage
```bash
# Make the script executable
chmod +x ipsweep.sh

# Run against a subnet prefix
./ipsweep.sh <subnet.prefix>

