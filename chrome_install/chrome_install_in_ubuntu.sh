#!/bin/bash

#Need to run this script as a root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root (with sudo command)"
  exit
fi
#chrome installing in the ubuntu
#upgrade the system
echo "hey! Google chrome is installing your system"
echo "Your system is upgrading!...."
sudo apt update
#update the system
echo "Your system is updating!...."
sudo apt upgrade -y
#download google chrome file in .deb package
echo "Downloading Google Chrome .deb package file"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#install google chrome
echo "Installing Google Chrome .deb package file"
sudo apt install ./google-chrome-stable_current_amd64.deb
echo "Google chrome is successfully installed your system"
echo "Google chrome is opeing soon..."
google-chrome
