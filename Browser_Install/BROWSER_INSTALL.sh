#!/bin/sh

#update the system
echo "Your! system is updating!..."
sudo apt update
#upgrade the system
echo "Your! system is upgrading!..."
sudo apt upgrade -y
#choice to install or uninstall browser
I="y"
while [ $I = "y" ]
do
echo "Enter your choice : "
echo "1.To Install Google Chrome Browser"
echo "2.To Install Mozilla Firefox Browser"
echo "3.To Uninstall Google Chrome Browser"
echo "4.To Uninstall Mozilla Firefox Browser"
echo "5.To Open Google Chrome"
echo "6.To Open Mozilla Firefox"
echo "7.Exit the process"
read choice
case $choice in 
          
           #Install Google Chrome Browser in Your System
	1) echo "Google Browser is starting to Installing!.."
	   #Download Google Chrome in .deb package
           echo "Downloading Google chrome!..."
	   wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	   #Install Google Chrome in .deb package
	   echo "Installing Google chrome!..."
	   sudo apt install ./google-chrome-stable_current_amd64.deb
           echo "Google Chrome is Successfully Installed your System"
           ;;

	   #Install MOzilla Firefox Browser in Your System
	2) echo "Mozilla Firefox is starting to Installing!.."
	   #Install Mozilla Firefox Browser
	   echo "Installing Google chrome!..."
	   sudo apt install firefox
	   echo "Mozilla Firefox is Successfully Installed your System"
	   ;;
	   
	   #Uninstall the Google Chrome Browser in Your System"
	3) echo "Uninstalling Google Chrome in Your System!!!.."
	   sudo apt-get --purge remove google-chrome-stable
	   sudo apt autoremove
	   echo "Google Chrome is Successfully Uninstalled your System"
           ;;

	   #Uninstall the Mozilla firefox Browser in Your System
	 4)echo "Uninstalling Mozilla Firefox in Your System!!!..."
	   sudo apt-get purge firefox
	   sudo apt autoremove
	   echo "Mozilla Firefox is Successfully Unistalled your System"
	   ;;
          
	   #Open Google chrome Browser in Graphical User Interface
	 5)echo "Opening Google Chrome soon!...."
	   google-chrome
	   ;;
           
	   #Open Mozilla Firefox in Graphical User Interface
	  6)echo "Opening Mozilla Firefox soon!...."
	    firefox
	    ;;
	    
	    #Exit the process
	  7) echo "Exit the process"
	     exit
	     ;;

esac
echo "Do you want To continue y for Continue or n for Abort"
read I
if [ $I != "y" ]
then
	exit
fi
done



