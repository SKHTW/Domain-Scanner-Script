#!/bin/bash

# Updating the system's package index
echo "Updating system..."
sudo apt-get update

# Installing Amass using Snap
if ! command -v snap &> /dev/null; then
    echo "Snap is not installed. Installing Snap..."
    sudo apt install snapd -y
    echo "Snap installed successfully."
fi
echo "Installing Amass..."
sudo snap install amass

# Installing Nmap
echo "Installing Nmap..."
sudo apt-get install -y nmap

# Installing cURL
echo "Installing cURL..."
sudo apt-get install -y curl

# Ensuring dig is available by installing dnsutils
echo "Installing dig via dnsutils package..."
sudo apt-get install -y dnsutils

# Installing go-based tools
if ! command -v go &> /dev/null; then
    echo "Go is not installed. Please install Go and re-run this script."
    exit 1
fi
echo "Installing Assetfinder..."
go install github.com/tomnomnom/assetfinder@latest

echo "Installing Subfinder..."
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

echo "Installing Dnsgen..."
sudo apt-get install -y python3-pip
sudo pip3 install dnsgen

# Compiling and installing Massdns
echo "Installing Massdns..."
git clone https://github.com/blechschmidt/massdns.git
cd massdns
make
sudo cp bin/massdns /usr/local/bin/
cd ..

# Installing Httprobe
echo "Installing Httprobe..."
go install github.com/tomnomnom/httprobe@latest

# Installing Aquatone
echo "Installing Aquatone..."
go install github.com/michenriksen/aquatone@latest

echo "All dependencies have been installed."
