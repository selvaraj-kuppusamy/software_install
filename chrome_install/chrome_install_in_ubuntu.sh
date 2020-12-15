#!/bin/sh

#chrome installing in the ubuntu
#upgrade the system
echo "hey! Google chrome is installing your system"
echo "Your system is upgrading!...."
sudo apt upgrade
#update the system
echo "Your system is updating!...."
sudo apt update
#download google chrome file in .deb package
echo "Downloading Google Chrome .deb package file"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#install google chrome
echo "Installing Google Chrome .deb package file"
sudo apt install ./google-chrome-stable_current_amd64.deb
echo "Google is successfully installed your system"
echo "Google chrome is opeing soon..."
google-chrome
