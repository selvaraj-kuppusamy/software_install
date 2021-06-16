#!/bin/sh

#update the system
echo "Your system is updating!..."
sudo apt update
#upgrade the system
echo "Your system is Upgrading!..."
sudo apt upgrade -y
#Enable Universe repository
echo "Universe repository is Enabling!.."
sudo add-apt-repository universe
#Install Putty
echo "Installing Putty!....."
sudo apt install putty -y
#Check Version
echo "Checking Putty Version!..."
putty --version
echo "Putty is Successfully Installed"
