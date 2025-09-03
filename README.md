# ipsweep

A simple Bash script for discovering active hosts on a subnet using ICMP echo requests (ping).  

## 🚀 Features
Scans all hosts in a `/24` subnet (`.1` – `.254`).  
Uses parallelized pinging for faster execution.  
Lightweight and easy-to-use.

## 📦 Requirements
- Linux or Unix-like environment  
- Tools: `bash`, `ping`, `grep`, `cut`, `tr`

## ⚡ Usage
Make the script executable:
```bash
chmod +x ipsweep.sh

./ipsweep.sh <subnet.prefix>
```
## Example
```bash
./ipsweep.sh 192.168.1
```
## 📋 Sample Output
```
192.168.1.1
192.168.1.10
192.168.1.23
```
## 🔒 Notes
- Root privileges not required.
- Intended for educational and troubleshooting purposes only.
- ⚠️ Do not use this script to scan networks without proper authorization.
