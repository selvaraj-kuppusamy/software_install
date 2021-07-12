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

#Ruby Installation
echo "Ruby is installing!!..."
sudo apt install ruby-full -y
echo "Ruby is successfully installed"
#check ruby version
echo "Checking ruby version!.."
ruby -v

