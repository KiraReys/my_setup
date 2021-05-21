#Setup for new installed linux debian/ubuntu !
#by Kira Reys

echo "Installing..."

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
if [[ -z "$GOPATH" ]];then
  sudo apt install golang-go
fi

sudo apt-get install net-tools
sudo apt-get install -y nmap

#################################################

mkdir ~/Tools
cd ~/Tools

git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip3 install -r requirements.txt
##Now with apt
sudo apt install sublist3r
cd ~/Tools/

git clone https://github.com/maurosoria/dirsearch.git
cd ~/Tools/

sudo apt install sqlmap
cd ~/Tools/

git clone https://github.com/projectdiscovery/subfinder
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
go get
go build

cd ~/
echo "Finished! type cd ~/Tools/ to change the directory!"


