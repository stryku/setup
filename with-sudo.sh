#!/bin/bash

# TODO:
# virtualbox
# docker
# filezilla

# Fail on error
set -e

MY_USER_NAME=$(ls /home | head -n 1 | awk '{print $1}')
MY_HOME=/home/$MY_USER_NAME


# figlet
apt install figlet -y

figlet with-sudo begin


# Remove firefox
figlet remove firefox
apt purge firefox -y


# Easy installs
figlet Easy installs
apt install -y \
    git \
    gitk \
    vim \
    zsh \
    keepassxc \
    doublecmd-qt \
    ffmpeg \
    vlc \
    virtualbox \
    libasound2-dev \


# Setup Zsh
figlet Setup Zsh
# Change entry in /etc/pam.d/chsh to make chsh to not ask for password.
# And restore old file after.
cp /etc/pam.d/chsh /etc/pam.d/chsh.backup
sed -i "s/auth\s+required\s+pam_shells.so/auth sufficient pam_shells.so/g" /etc/pam.d/chsh
chsh -s $(which zsh) $MY_USER_NAME
mv /etc/pam.d/chsh.backup /etc/pam.d/chsh


# VS Code
figlet VS Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt-get install apt-transport-https 
apt-get update
apt-get install code -y


# Brave
figlet Brave
apt install apt-transport-https curl gnupg -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser -y


# OBS
figlet OBS
add-apt-repository ppa:obsproject/obs-studio -y
apt install obs-studio -y


# Spotify
figlet Spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | tee /etc/apt/sources.list.d/spotify.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
apt update
apt install spotify-client -y


# Python 3.9
figlet Python 3.9
add-apt-repository ppa:deadsnakes/ppa -y
apt update
apt install -y \
    python3.9 \
    python3.9-venv \
    python3.9-dev \

apt install python3-alsaaudio
wget https://bootstrap.pypa.io/get-pip.py
python3.9 get-pip.py


# Docker
figlet Docker
apt install -y \
    apt-transport-https
    ca-certificates
    curl
    gnupg-agent
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable" -y
apt update
apt install docker-ce -y
usermod -aG docker $MY_USER_NAME


figlet with-sudo done
