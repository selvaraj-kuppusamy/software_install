#!/bin/bash

#virtual box installing in ubuntu
#update the system
echo "Your system is updating ..."
sudo apt update -y
#upgrade the system
echo "Your system is upgrading ..."
sudo apt upgrade -y
#install virtual box
echo "Virtual box is installing..."
sudo apt install virtualbox -y
#install virtual box extension back
echo "Virtual box extension back is installing..."
sudo apt install virtualbox-ext-pack -y
echo "virtual box is successfully installed"

