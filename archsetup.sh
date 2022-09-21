#!/bin/bash

#install blackarch repository

# Run https://blackarch.org/strap.sh as root and follow the instructions.
curl -O https://blackarch.org/strap.sh

# Set execute bit
chmod +x strap.sh

# Run strap.sh
sudo ./strap.sh

# Enable multilib following https://wiki.archlinux.org/index.php/Official_repositories#Enabling_multilib and run:
sudo pacman --noconfirm -Syu

#install regular tools
sudo pacman -S --no-confirm git flameshot terminator

#install pentest tools
sudo pacman -S --noconfirm john enum4linux metasploit aircrack-ng arptools arpscan sqlmap burpsuite cupp cowpatty gobuster dirbuster fierce nikto hydra sherlock set transmission-gtk nmap empire dnsutils

# Create Folders
mkdir ~/Documents/Scripts
mkdir ~/Documents/Wordlists

#install some tools from github
sudo git clone https://github.com/pentestmonkey/php-reverse-shell.git ~/Documents/Scripts
sudo git clone https://github.com/danielmiessler/SecLists.git ~/Documents/Wordlists

# install z shell
sudo pacman -Syu
sudo pacman -S zsh --noconfirm #!/usr/bin/env zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
