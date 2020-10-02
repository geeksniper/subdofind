# subdofind
This tool can gather all possible subdomains.
# tools need to be installed
To run this tool need to install following tools
# sublister
sudo apt install sublist3r
# amass
sudo apt install amass
# now need to install golang
sudo apt install golang

# configure $GOPATH/bin
nano ~/.bashrc
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# scripts need to be installed 
# anew
go get -u github.com/tomnomnom/anew
# assetfinder
go get -u github.com/tomnomnom/assetfinder
# gospider
go get -u github.com/jaeles-project/gospider
# httprobe
go get -u github.com/tomnomnom/httprobe

# Install 
git clone https://github.com/geeksniper/subdofind.git
cd /subdofind
chmod +x subdofind.sh
# use
./subdofind.sh <domain_name>
