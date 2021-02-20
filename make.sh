#!/bin/bash

echo "Installing..."

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt install golang-go
sudo apt-get install net-tools
sudo apt-get install -y nmap

mkdir ~/Tools
cd ~/Tools

git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip install -r requirements.txt
cd ~/Tools/

git clone https://github.com/maurosoria/dirsearch.git
cd ~/Tools/

git clone https://github.com/sqlmapproject/sqlmap
cd ~/Tools/

git clone https://github.com/OWASP/Amass
cd ~/Tools/

git clone https://github.com/projectdiscovery/subfinder
cd ~/Tools/

git clone https://github.com/michenriksen/gitrob
cd ~/Tools/

git clone https://github.com/sullo/nikto
cd ~/Tools/

echo "Done!"

