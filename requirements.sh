#!/bin/bash

# Clone and install Amass
git clone https://github.com/OWASP/Amass.git
cd Amass
go install ./...

# Clone and install Nmap
git clone https://github.com/nmap/nmap.git
cd nmap
./configure
make
sudo make install

# Clone and install curl
git clone https://github.com/curl/curl.git
cd curl
./buildconf
./configure
make
sudo make install

# Clone and install Subfinder
git clone https://github.com/projectdiscovery/subfinder.git
cd subfinder/v2/cmd/subfinder
go build
sudo mv subfinder /usr/local/bin/

# Clone and install Dnsgen
git clone https://github.com/ProjectAnte/dnsgen.git
cd dnsgen
sudo make install

# Clone and install Massdns
git clone https://github.com/blechschmidt/massdns.git
cd massdns
make
sudo cp bin/massdns /usr/local/bin/

# Clone and install Httprobe
git clone https://github.com/tomnomnom/httprobe.git
cd httprobe
go build
sudo mv httprobe /usr/local/bin/

# Clone and install Aquatone
git clone https://github.com/michenriksen/aquatone.git
cd aquatone
gem install bundler
bundle install
