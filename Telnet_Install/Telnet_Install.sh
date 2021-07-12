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
#Telnet Installation
echo "TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT"
echo "T                            Telnet Install                            T"
echo "TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT"
echo "Telnet is Installing!...."
sudo apt install telnetd -y
#Allow 23 Port Number
echo "Allowing Port Number!..."
sudo ufw allow 23/tcp
#Check Status
echo "Checking Telnet Service status!...."
systemctl status inetd --no-pager
#reload Ufw Firewall
echo "Reloading ufw Firewall!..."
ufw reload
echo "Telnet is Successfully Installed!"
