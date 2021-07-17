#!/bin/bash

#Need to run this script as a root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root (with sudo command)"
  exit
fi
#Eclipse installing in the ubuntu
#upgrade the system
echo "hey! Eclipse is installing your system"
echo "Your system is upgrading!...."
sudo apt update
#update the system
echo "Your system is updating!...."
sudo apt upgrade -y

#Install java
echo "Installing java!..."
sudo apt install default-jre

#Install Eclipse
echo "Installing Eclipse!..."
sudo snap install eclipse --classic
echo "Eclipse is successfully Installed!."
