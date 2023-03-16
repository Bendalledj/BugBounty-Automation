#!/bin/bash

# Update and upgrade the system
echo "Updating and upgrading the system..."
sudo apt update -y && sudo apt upgrade -y

# Install necessary dependencies
echo "Installing necessary dependencies..."
sudo apt install -y git python3 python3-pip

# Clone the required repositories
echo "Cloning the required repositories..."
git clone https://github.com/projectdiscovery/subfinder.git
git clone https://github.com/maurosoria/dirsearch.git
git clone https://github.com/nmap/nmap.git
git clone https://github.com/vulnersCom/nmap-vulners.git
git clone https://github.com/003random/getJS.git
git clone https://github.com/epi052/GoLinkFinder.git
git clone https://github.com/lc/gau.git
git clone https://github.com/tomnomnom/waybackurls.git
git clone https://github.com/ethicalhack3r/robots.txt.git
git clone https://github.com/blechschmidt/massdns.git
git clone https://github.com/aboul3la/Sublist3r.git
git clone https://github.com/ffuf/ffuf.git
git clone https://github.com/hahwul/XSpear.git
git clone https://github.com/sqlmapproject/sqlmap.git
git clone https://github.com/enjoiz/XXEinjector.git
git clone https://github.com/0xRadi/SSRF-Testing.git
git clone https://github.com/internetwache/GitTools.git
git clone https://github.com/awslabs/git-secrets.git
git clone https://github.com/s0md3v/Race-the-Web.git
git clone https://github.com/chenjj/CORStest.git
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
git clone https://github.com/maK-/parameth.git

# Install Python packages
echo "Installing Python packages..."
pip3 install requests

# Install GoLinkFinder dependencies
echo "Installing GoLinkFinder dependencies..."
cd GoLinkFinder
go get github.com/fatih/color
go build
cd ..

# Install EyeWitness dependencies
echo "Installing EyeWitness dependencies..."
cd EyeWitness/Python/setup
sudo ./setup.sh
cd ../../..

echo "Done!"
