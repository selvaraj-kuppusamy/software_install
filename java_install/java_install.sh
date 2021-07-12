#/bin/bash

#Need to run this script as a root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root (with sudo command)"
  exit
fi
#update the system
echo "Your system is updating!..."
sudo apt update
#upgrade the system
echo "Your system is Upgrading!..."
sudo apt upgrade -y
#install java on ubuntu
#install openJDK
echo "Installing java on ubuntu!..."
echo "Install open Java Development Kit..."
sudo apt install default-jdk
echo "open Java Development kit is sucessfully installed you system!!!"


