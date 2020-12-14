#!/bin/sh

#chrome installing in the ubuntu
#upgrade the system
echo "hey! Google chrome is installing your system"
sudo apt upgrade
#update the system
sudo apt update
#download google chrome file in .deb package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#install google chrome
sudo apt install ./google-chrome-stable_current_amd64.deb
echo "Google is successfully installed your system"
google-chrome
