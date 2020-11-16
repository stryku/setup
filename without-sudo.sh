#!/bin/bash


MY_USER_NAME=$(ls /home | head -n 1 | awk '{print $1}')
MY_HOME=/home/$MY_USER_NAME


figlet without-sudo begin


# Zsh
figlet Oh My Zsh
wget -O oh-my-zsh-install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x oh-my-zsh-install.sh
./oh-my-zsh-install.sh --skip-chsh


# .dotfiles
figlet dotfiles
cp dotfiles/* ~/


# Create bin dir
mkdir -p ~/bin


# PyCharm
PYCHARM_NAME=pycharm-community-2020.2.3
PYCHARM_FILE=$PYCHARM_NAME.tar.gz
PYCHARM_DIR=~/programs/pycharm
mkdir -p $PYCHARM_DIR
wget https://download.jetbrains.com/python/$PYCHARM_FILE
tar -xzf $PYCHARM_FILE -C $PYCHARM_DIR
echo "#\!/bin/bash \ncd ${PYCHARM_DIR}/${PYCHARM_NAME}/bin && ./pycharm.sh" > ~/bin/pycharm


# Folders structure
figlet folders
mkdir -p \
    ~/my/kp \
    ~/my/programming \
    ~/my/tmp


figlet without-sudo done
