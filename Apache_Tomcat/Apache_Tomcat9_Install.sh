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
#Install Java
echo "Installing Java Development Kit Package!..."
sudo apt install default-jdk
#Create Tomcat User
echo "Creating a new tomcat group!..."
sudo groupadd tomcat
echo "tomcat user created!.."
echo "Make the tomcat user a memeber of tomcat group.."
echo "..with a home directory of /opt/tomcat.."
echo "..and with a shell of /bin/false!..."
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
echo "Now! Tomcat user is setup!"
#Install Tomcat
echo "change directory /tmp"
cd /tmp
echo "Tomcat9 downloaded link copied from Tomcat Website!.."
echo "curl comment to download Tomcat9 file!..."
curl -O https://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.45/bin/apache-tomcat-9.0.45.tar.gz
echo "Making directory /opt/tomcat!.."
sudo mkdir /opt/tomcat
echo "Installing /opt/tomcat to extract the archive!.."
sudo tar xzvf apache-tomcat-*tar.gz -C /opt/tomcat --strip-components=1
#Update permissions
echo "Changed Directory to unpacked Tomcat installation!..."
cd /opt/tomcat
echo "Giving the tomcat ownership over the entire installation directory!..."
sudo chgrp -R tomcat /opt/tomcat
echo "tomact,read access to conf dir!...."
sudo chmod -R g+r conf
echo "tomcat,execute access to conf dir!...."
sudo chmod g+x conf
echo "tomcat,user the of the webapps/ work/ temp/ logs/"
sudo chown -R tomcat webapps/ work/ temp/ logs/
#Create a Systemd Service File
echo "Find Tomcat needs to know where java is installed..."
sudo update-java-alternatives -l
echo "Modifying systemd service file...."
sudo cat > /etc/systemd/system/tomcat.service <<EOF
[Unit]
Description=Apache Tomcat Web Application Container
After=network.target

[Service]
Type=forking

Environment=JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64
Environment=CATALINA_PID=/opt/tomcat/temp/tomcat.pid
Environment=CATALINA_HOME=/opt/tomcat
Environment=CATALINA_BASE=/opt/tomcat
Environment='CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC'
Environment='JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom'

ExecStart=/opt/tomcat/bin/startup.sh
ExecStop=/opt/tomcat/bin/shutdown.sh

User=tomcat
Group=tomcat
UMask=0007
RestartSec=10
Restart=always

[Install]
WantedBy=multi-user.target
EOF
echo "Reload the systemd daemon!..."
sudo systemctl daemon-reload
echo "Start the Tomcat service!..."
sudo systemctl start tomcat
echo "Checking Tomcat Server status!..."
sudo systemctl status tomcat --no-pager
#Adjust the Firewall and Test the Tomcat Server
echo "Allow Tomcat uses port 8080 !..."
sudo ufw allow 8080
echo "Testing the Tomcat server!.."
curl http://127.0.0.1:8080
#or curl http://localhost:8080
echo "Apache Tomcat server is successfully Installed!"

