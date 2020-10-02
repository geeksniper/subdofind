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
nano ~/.bashrc <br>
go to the last line of this file then export those lines <br>
export PATH=$PATH:/usr/local/go/bin <br>
export GOPATH=$HOME/go <br>
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
git clone https://github.com/geeksniper/subdofind.git <br>
cd /subdofind <br>
chmod +x subdofind.sh
# use
./subdofind.sh <domain_name>
