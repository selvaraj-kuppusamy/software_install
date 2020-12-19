#!/bin/sh

#upgrade the system
echo "Your system is Upgrading!..."
sudo apt upgrade -y
#update the system
echo "Your system is updating!..."
sudo apt update -y 
#c complier install
#Note that point if you want install pakages all packages like g++,etc...
#use this commnad sudo apt install build-essential
echo "c complier installing!......"
sudo apt install -y gcc
echo "c complier is successfully installed!..."
