#!/bin/bash

#upgrade the system
echo "Your system is Upgrading!..."
sudo apt upgrade -y
#update the system
echo "Your system is updating!..."
sudo apt update -y 
#install ngrok in the ubuntu
#Download ngrok zip file 
echo "Downloading Ngrok zip file..."
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
#unzip ngrok zip file
echo "Unzipping the ngrok file!..."
unzip ngrok-stable-linux-amd64.zip
echo "ngrok has successfully installed!"
