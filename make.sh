# Setup for new installed Linux Debian/Ubuntu
# Made by Kira Reys
#################################################

printf " ! Starting the script ! \n Installing the following tools..."
echo "nmap, JohnTheRipper, Sublist3r, searchsploit, dirsearch, sqlmap, subfinder, nuclei, ParamSpider, ffuf"

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
if [[ -z "$GOPATH" ]];then
  sudo apt install golang-go
fi

export GOPATH=$HOME/go

sudo apt-get install net-tools
sudo apt-get install -y nmap

sudo apt-get install john

#################################################

mkdir ~/Tools
cd ~/Tools

git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip3 install -r requirements.txt

sudo apt install sublist3r #Now with APT
cd ~/Tools/

git clone https://github.com/maurosoria/dirsearch.git
cd ~/Tools/

sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
sudo ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit
cd ~/Tools/

sudo apt install sqlmap
cd ~/Tools/

GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
cd ~/Tools/

git clone https://github.com/projectdiscovery/nuclei.git
cd nuclei/v2/cmd/nuclei
go build
mv nuclei /usr/local/bin/
cd ~/Tools/

git clone https://github.com/devanshbatham/ParamSpider
cd ParamSpider
pip3 install -r requirements.txt
cd ~/Tools/

git clone https://github.com/ffuf/ffuf
cd ffuf
go get -u github.com/ffuf/ffuf

go get -u github.com/tomnomnom/httprobe
go get -u github.com/tomnomnom/assetfinder
go get github.com/tomnomnom/waybackurls

cd ~/

git clone https://github.com/algotech/dotaliases.git .aliases

clear
echo "=================================================="
echo "Finished! Type cd ~/Tools/ to change the directory"
echo "=================================================="
