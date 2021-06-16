#!/bin/bash

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

