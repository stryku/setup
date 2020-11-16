#!/bin/bash


MY_USER_NAME=$(ls /home | head -n 1 | awk '{print $1}')
MY_HOME=/home/$MY_USER_NAME


# Vim
cp files/.viminfo $MY_HOME/.viminfo


# Zsh
figlet Oh My Zsh
wget -O oh-my-zsh-install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x oh-my-zsh-install.sh
./oh-my-zsh-install.sh --skip-chsh

figlet .zshrc
cp files/.zshrc $MY_HOME/.zshrc
