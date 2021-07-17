#!/bin/bash

#Need to run this script as a root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root (with sudo command)"
  exit
fi
#upgrade the system
echo "hey! ngrok is installing your system"
echo "Your system is upgrading!...."
sudo apt update
#update the system
echo "Your system is updating!...."
sudo apt upgrade -y

#install ngrok in the ubuntu
#Download ngrok zip file 
echo "Downloading Ngrok zip file..."
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
#unzip ngrok zip file
echo "Unzipping the ngrok file!..."
unzip ngrok-stable-linux-amd64.zip
echo "ngrok has successfully installed!"
