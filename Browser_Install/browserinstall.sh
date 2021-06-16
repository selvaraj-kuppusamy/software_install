#!/bin/sh

#update the system
echo "Your! system is updating!..."
sudo apt update
#upgrade the system
echo "Your! system is upgrading!..."
sudo apt upgrade -y
#choice to install or uninstall browser

case $@ in 
          
           #Install Google Chrome Browser in Your System
	'--install chrome') echo "Google Browser is starting to Installing!.."
   		            #Download Google Chrome in .deb package
                            echo "Downloading Google chrome!..."
	                    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	                    #Install Google Chrome in .deb package
                            echo "Installing Google chrome!..."
			    sudo apt install ./google-chrome-stable_current_amd64.deb -y
                            echo "Google Chrome is Successfully Installed your System"
           		    ;;

	   #Install MOzilla Firefox Browser in Your System
	'--install firefox') echo "Mozilla Firefox is starting to Installing!.."
			     #Install Mozilla Firefox Browser
			     echo "Installing Google chrome!..."
	 		     sudo apt install firefox -y
	 		     echo "Mozilla Firefox is Successfully Installed your System"
	  	             ;;
	   
	   #Uninstall the Google Chrome Browser in Your System"
	'--uninstall chrome') echo "Uninstalling Google Chrome in Your System!!!.."
	    		      sudo apt-get --purge remove google-chrome-stable -y
	 		      sudo apt autoremove -y
		              echo "Google Chrome is Successfully Uninstalled your System"
          		      ;;

	   #Uninstall the Mozilla firefox Browser in Your System
	 '--uninstall firefox')echo "Uninstalling Mozilla Firefox in Your System!!!..."
	                       sudo apt-get purge firefox -y
	   		       sudo apt autoremove -y
	                       echo "Mozilla Firefox is Successfully Unistalled your System"
	 		       ;;

esac
