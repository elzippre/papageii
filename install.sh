#!/bin/bash
# Parrot install additional packages

# Update current packages
sudo apt update
sudo apt upgrade -y

# Nextcloud Client
i_nextcloud() {
sudo apt install nextcloud-desktop -y
}
# VSCode
i_vscode(){
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders

}


# VPN

# Wireguard
i_wireguard(){
sudo apt install wireguard -y
}

# Openconnect
i_openconnect(){
sudo apt install openconnect -y
}

# KeepassXC
i_keepass(){
sudo apt install keepassxc -y
}

# Main
i_nextcloud
i_vscode
i_wireguard
i_openconnect
i_keepass

