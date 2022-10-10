#!/bin/bash

#Need to run this script as a root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root (with sudo command)"
  exit
fi
#upgrade the system
echo "Your! system is upgrading!..."
sudo apt upgrade -y
#update the system
echo "Your! system is updating!..."
sudo apt update

echo "###################################################################################"
echo "#                         APACHE TOMCAT INSTALLATION                              #"
echo "###################################################################################"
#Install Java
echo "Installing Java Development Kit Package!..."
sudo apt install default-jdk
#Tomcat in Repository
echo "Checking for Tomcat in Repository!...."
sudo apt-cache search tomcat
#Install Tomcat
echo "Installing Apache tomcat9 package!..."
sudo apt install tomcat9 -y
echo "Installing Apache tomcat9 admin package!..."
sudo apt install tomcat9-admin -y
#Check Apache Tomcat Server Install
echo "Check Apache Tomcat Server Installed using Port!..."
echo "Port Number ----->80"
ss -ltn
#Change Tomcat Settings
echo "Apache Tomcat Server is starting!..."
sudo systemctl enable tomcat9
echo "Apache Tomcat Server is Started"
#Allow Traffic to Port 8080
echo "Allow Traffic to Port 8080 !..."
sudo ufw allow from any to any port 8080 proto tcp
echo "Checking Server Status!.."
sudo systemctl status tomcat9 --no-pager
echo "Testing the Tomcat server!.."
curl http://127.0.0.1:8080
#or curl http://localhost:8080
echo "Apache Tomcat server is successfully Installed!"

