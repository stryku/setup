#!/bin/bash


MY_USER_NAME=$(ls /home | head -n 1 | awk '{print $1}')
MY_HOME=/home/$MY_USER_NAME


figlet without-sudo begin


# Zsh
figlet Oh My Zsh
wget -O oh-my-zsh-install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x oh-my-zsh-install.sh
./oh-my-zsh-install.sh --skip-chsh


figlet dotfiles
cp dotfiles/* ~/


figlet without-sudo done
