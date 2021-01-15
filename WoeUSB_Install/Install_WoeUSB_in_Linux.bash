#!/bin/bash

#Install WoeUSB in linux

#update the system
echo "Your System is updating!!.."
sudo apt update
#upgrade the system
echo "Your system is upgrading!!..."
sudo apt upgrade
#Add WoeUSB repository
echo "Add WoeUSB repository!..."
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
#Again run update the system
echo "Again system is updating!!..."
sudo apt update
#to download  the libwxgtk3.0 in manully
echo "Downloading libwxgtk3.0 manully.."
wget http://mirrors.kernel.org/ubuntu/pool/universe/w/wxwidgets3.0/libwxgtk3.0-0v5_3.0.4+dfsg-3_amd64.deb
#to install the libwxgtk3.0 in manully
echo "Installing libwxgtx3.0 manully..."
sudo dpkg -i libwxgtk*_amd64.deb
#install libwxbase3.0-0v5
echo "Installing libwxbase3.0-0v5..."
sudo apt install libwxbase3.0-0v5
#fix broken packages
echo "fixing Broken packages!!....."
sudo apt --fix-broken install
#Again update the system
echo "Again updating your system!!..."
sudo apt update
#Finally Install WoeUsb 
echo "WoeUsb is Installing!!..."
sudo apt install woeusb
echo "WoeUSB is successfully installed your system"

