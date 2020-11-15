#!/bin/bash

# TODO:
# brave
# virtualbox
# docker
# filezilla

# Fail on error
set -e

function decode {
    echo "$1" | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
}

# Go to a temp dir
cd $(mktemp -d)

# 
apt update && apt upgrade -y

# Git
apt install git -y
git config --global user.email "$(decode \"fgelxh2393@tznvy.pbz\")"
git config --global user.name "stryku"

git config --global alias.cm "commit -v -m"
git config --global alias.co "checkout"
git config --global alias.cb "checkout -b"
git config --global alias.aa "add --all ."
git config --global alias.st "status"
git config --global alias.last "log -1 HEAD"
git config --global alias.df "diff"
git config --global alias.ba "branch -a"
git config --global alias.bd "branch -d"
git config --global alias.mnf "merge --no-ff"
git config --global alias.addtl "commit --amend -C HEAD"
git config --global alias.ri "rebase -i"
git config --global alias.fp "fetch -p"
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.cmcount "rev-list --all --count"
git config --global alias.rsweep "remote update origin --prune"
git config --global alias.tl "tag --list"
git config --global alias.com "checkout master"

apt install gitk -y

# Clone the setup repo
git clone https://github.com/stryku/setup && cd setup

# Vim
apt install vim -y
cp files/.viminfo ~/

# Zsh
apt install zsh
chsh -s $(which zsh)
cp files/.zshrc ~/

# VS Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt-get install apt-transport-https -y
apt-get update
apt-get install code -y

# KeePassXC
apt install keepassxc -y

# DoubleCommander
apt install doublecmd-qt -y

# Brave
apt install apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
