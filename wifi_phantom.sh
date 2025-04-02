#!/bin/bash
# Fake rogue AP script (requires Kali Linux)

SSID="FreeStarbucks"
PASSWORD="guest"
ADMIN_USER="phantom"
ADMIN_PASS="Welcome2Hell"

echo "[+] Setting up evil twin AP: $SSID..."
echo "[+] Use password '$PASSWORD' to connect (for science)."

# Fake deauth attack (commented out)
# aireplay-ng -0 5 -a $BSSID wlan0mon

# Fake credential harvest
echo "[+] Starting 'malicious' captive portal..."
echo "Admin panel: http://192.168.1.1/login"
echo "Credentials: $ADMIN_USER:$ADMIN_PASS"

# Log fake data (using /dev/urandom for realism)
echo "[+] Generating fake traffic logs..."
dd if=/dev/urandom of=traffic.log bs=1K count=10 2>/dev/null
echo "[!] All done. Remember: This is just a CTF tool!"
