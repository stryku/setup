#!/bin/bash

# TODO:
# virtualbox
# docker
# filezilla
# remove firefox
# VLC
# Spotify

# Fail on error
set -e

# Go to a temp dir
cd $(mktemp -d)

wget -O with-sudo.sh https://raw.githubusercontent.com/stryku/setup/master/with-sudo.sh
chmod +x with-sudo.sh

wget -O without-sudo.sh https://raw.githubusercontent.com/stryku/setup/master/without-sudo.sh
chmod +x without-sudo.sh

sudo ./with-sudo.sh
./without-sudo.sh



# function decode {
#     echo "$1" | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
# }

# MY_USER_NAME=$(ls /home | head -n 1 | awk '{print $1}')
# MY_HOME=/home/$MY_USER_NAME


# # figlet
# apt install figlet -y




# # Remove firefox
# figlet remove firefox
# apt purge firefox -y


# # Git
# figlet git

# apt install git -y
# git config --global user.email "$(decode \"fgelxh2393@tznvy.pbz\")"
# git config --global user.name "stryku"

# git config --global alias.cm "commit -v -m"
# git config --global alias.co "checkout"
# git config --global alias.cb "checkout -b"
# git config --global alias.aa "add --all ."
# git config --global alias.st "status"
# git config --global alias.last "log -1 HEAD"
# git config --global alias.df "diff"
# git config --global alias.ba "branch -a"
# git config --global alias.bd "branch -d"
# git config --global alias.mnf "merge --no-ff"
# git config --global alias.addtl "commit --amend -C HEAD"
# git config --global alias.ri "rebase -i"
# git config --global alias.fp "fetch -p"
# git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
# git config --global alias.cmcount "rev-list --all --count"
# git config --global alias.rsweep "remote update origin --prune"
# git config --global alias.tl "tag --list"
# git config --global alias.com "checkout master"

# apt install gitk -y


# # Clone the setup repo
# git clone https://github.com/stryku/setup && cd setup


# # Vim
# figlet vim
# apt install vim -y
# cp files/.viminfo $MY_HOME/.zshrc


# # Zsh
# figlet zsh
# apt install zsh -y


# # Change entry in /etc/pam.d/chsh to make chsh to not ask for password.
# # And restore old file after.
# cp /etc/pam.d/chsh /etc/pam.d/chsh.backup
# sed -i "s/auth\s+required\s+pam_shells.so/auth sufficient pam_shells.so/g" /etc/pam.d/chsh
# chsh -s $(which zsh) $MY_USER_NAME
# mv /etc/pam.d/chsh.backup /etc/pam.d/chsh

# figlet Oh My Zsh
# sh -c "yes | $(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# figlet .zshrc
# cp files/.zshrc $MY_HOME/.zshrc


# # VS Code
# figlet VS Code
# wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
# install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
# sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
# apt-get install apt-transport-https 
# apt-get update
# apt-get install code -y


# # KeePassXC
# figlet KeePassXC
# apt install keepassxc -y


# # DoubleCommander
# figlet DoubleCommander
# apt install doublecmd-qt -y


# # Brave
# figlet Brave
# apt install apt-transport-https curl gnupg -y
# curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
# echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
# apt update
# apt install brave-browser -y


# # FFmpeg
# figlet FFmpeg
# apt install ffmpeg -y


# # OBS
# figlet OBS
# add-apt-repository ppa:obsproject/obs-studio -y
# apt install obs-studio -y


# # Spotify
# curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | apt-key add - 
# echo "deb http://repository.spotify.com stable non-free" | tee /etc/apt/sources.list.d/spotify.list
# apt update
# apt install spotify-client -y


# # Python 3.9
# add-apt-repository ppa:deadsnakes/ppa -y
# apt update
# apt install python3.9 -y

# # timeshift --yes --restore --snapshot "$(sudo timeshift --list | tail -n 2 | head -n 1 | awk '{print $3}')"
