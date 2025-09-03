#!/bin/bash

# ipsweep.sh - Simple bash script for discovering active hosts on a subnet
# Usage: ./ipsweep.sh <submet.prefix>
# Example: ./ipsweep.sh 10.0.2 -> scans 10.0.2.1 to 10.0.2.254


# Prompt user if no argument was provided, the subnet prefix
if [ "$1" =="" ]
then
	echo "You forgot to input an IP address!"
	echo "Syntax: ./ipsweep.sh 10.0.2"

else
# Loop through host addresses 1 to 254
	for ip in `seq 1 254`; do
	# Ping each host once (-c 1)
	# If response contains "64 bytes", extract and clean up the IP
	# 'Speed up process' "&"/ parallelisation (running in the background for faster scanning)
		ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
	done
fi
