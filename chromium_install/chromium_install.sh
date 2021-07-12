#!/bin/sh

#Need to run this script as a root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root (with sudo command)"
  exit
fi
#chromium install your system
echo "Hey! Google Chromium  is installing your system"
#update the system
echo "Your system is updating!..."
sudo apt update
#upgrade the system
echo "Your system is upgrading!..."
sudo apt upgrade -y
#chromium browser install
echo "Google chromium browser is intalling!..."
sudo apt install -y chromium-browser
echo "Google chromium is successfully installed your system!"
echo "Google chromium is opening soon!"
chromium-browser


