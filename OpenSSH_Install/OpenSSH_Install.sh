#!/bin/bash

#Need to run this script as a root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root (with sudo command)"
  exit
fi
#update the system
echo "Your! system is updating!..."
sudo apt update
#upgrade the system
echo "Your! system is upgrading!..."
sudo apt upgrade -y

#Install Openssh
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+				OPENSSH				      +"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Installing Openssh!...."
sudo apt install openssh-server
sudo apt install openssh-client
#Allow Firewall in ssh
echo "Allowing firewall!...."
sudo ufw allow ssh
#Check Firewall status
echo "Checking ufw firewall status!..."
sudo ufw status
#Enable ssh server
echo "Enabling ssh service!..."
sudo systemctl enable ssh
#Check service Status	
echo "Checking ssh service Status!...."
sudo systemctl status sshd --no-pager
echo "Openssh is successfullt Installed"
