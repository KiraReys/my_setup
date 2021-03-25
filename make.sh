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
pip install -r requirements.txt
cd ~/Tools/

git clone https://github.com/maurosoria/dirsearch.git
cd ~/Tools/

git clone https://github.com/sqlmapproject/sqlmap
cd ~/Tools/

git clone https://github.com/projectdiscovery/subfinder
cd ~/Tools/

git clone https://github.com/projectdiscovery/nuclei.git
cd nuclei/v2/cmd/nuclei
go build
mv nuclei /usr/local/bin/
cd ~/Tools/

git clone https://github.com/sullo/nikto
cd ~/Tools/

git clone https://github.com/ffuf/ffuf
cd ffuf
go get
go build

cd ~/
echo "Finished! type `cd ~/Tools/` to change the directory!"


