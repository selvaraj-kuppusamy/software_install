#!/bin/sh

#upgrade the system
echo "Your System is Upgrading!!..."
sudo apt upgrade
#update the system
echo "Your System is Updating!!..."
sudo apt update
#Install Nmap
echo "Nmap is Installing!!!...."
sudo apt install nmap
#Check Nmap Version
echo "Checking Nmap Version!!...."
nmap --version
echo "Nmap is Sucessfully  Installed!."
