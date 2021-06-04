#!/bin/sh

#upgrade the system
echo "Your system is Upgrading!..."
sudo apt upgrade -y
#update the system
echo "Your system is updating!..."
sudo apt update -y
#Install Visual Studio code
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                VISUAL STUDIO CODE                    +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
#packages index and install the dependencies by Visual studio code
echo "packages index and install the dependencies by running Visual sudio code !..."
sudo apt install software-properties-common apt-transport-https wget
#Import GPG key
echo "importing the Microsoft GPG key!...."
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
echo "enable the Visual Studio Code repository by typing!..."
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
#Install Visual Studio code
echo "Installing the Visual Studio Code package!.."
sudo apt install code -y
#Again upgrade the system
echo "Again Your system is Upgrading!..."
sudo apt upgrade -y
#Again update the system
echo "Again Your system is updating!..."
sudo apt update -y
echo "Visual Studio code is Successfully Installed"
