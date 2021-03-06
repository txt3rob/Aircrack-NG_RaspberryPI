#!/bin/bash
#################################################
# Aircrack-ng Installer For Raspberry Pi        #
#												                        #
# Made By Robert Wiggins					            	#
# txt3rob@gmail.com							              	#
#												                        #
# USE AT YOUR OWN RISK & TEST ONLY ON YOUR OWN  #
# HARDWARE NOT ANY ONE ELSES				          	#
#											                        	#
#################################################
echo "Starting Updating APT"
sudo apt-get update
echo "Installing Dependencys"
sudo apt-get install libssl-dev subversion iw libnl-dev macchanger sqlite3 reaver -y
sudo apt-get install libnl-3-dev libnl-genl-3-dev -y
echo "Grabbing Aircrack"
wget http://download.aircrack-ng.org/aircrack-ng-1.2-rc4.tar.gz
sudo tar xzvf aircrack-ng-1.2-rc4.tar.gz
sudo mv aircrack-ng-1.2-rc4 aircrack-ng
cd aircrack-ng 
sudo make 
sudo make install
sudo airodump-ng-oui-update
cd scripts
sudo make install
echo "done"
