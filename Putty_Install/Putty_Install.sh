#!/bin/bash

#Need to run this script as a root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root (with sudo command)"
  exit
fi
#Putty Install
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
