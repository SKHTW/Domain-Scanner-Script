#!/bin/bash

echo "Updating system..."
sudo apt-get update

echo "Installing Amass..."
sudo snap install amass

echo "Installing Nmap..."
sudo apt-get install -y nmap

echo "Installing cURL..."
sudo apt-get install -y curl

echo "Installing Assetfinder..."
go get -u github.com/tomnomnom/assetfinder

echo "Installing Subfinder..."
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder

echo "Installing Dnsgen..."
sudo apt-get install -y python3-pip
pip3 install dnsgen

echo "Installing Massdns..."
git clone https://github.com/blechschmidt/massdns.git
cd massdns
make
sudo cp bin/massdns /usr/local/bin/
cd ..

echo "Installing Httprobe..."
go get -u github.com/tomnomnom/httprobe

echo "Installing Aquatone..."
go get -u github.com/michenriksen/aquatone

echo "Installation of all dependencies is complete!"
