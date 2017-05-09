#!/bin/bash
# This scripts give you the internal and External IP.

echo
echo "Internal IPs";
ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'
echo
echo
echo "External IPs";
dig +short myip.opendns.com @resolver1.opendns.com;
echo
