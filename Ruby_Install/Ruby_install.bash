#!/bin/bash

#upgrade the system
echo "Your! system is upgrading!..."
sudo apt upgrade -y
#update the system
echo "Your! system is updating!..."
sudo apt update

#Ruby Installation
echo "Ruby is installing!!..."
sudo apt install ruby-full -y
echo "Ruby is successfully installed"
#check ruby version
echo "Checking ruby version!.."
ruby -v

