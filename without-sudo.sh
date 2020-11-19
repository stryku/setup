#!/bin/bash


# Fail on error
set -e

function decode {
    echo "$1" | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
}

MY_USER_NAME=$(ls /home | head -n 1 | awk '{print $1}')
MY_HOME=/home/$MY_USER_NAME


figlet without-sudo begin


# Setup Git
figlet setup Git

git config --global user.email "$(decode \"fgelxh2393@tznvy.pbz\")"
git config --global user.name "stryku"

git config --global core.pager cat
git config --global core.editor vim

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
git config --global alias.tl "tag --list --sort=creatordate"
git config --global alias.com "checkout master"



# Zsh
figlet Oh My Zsh
wget -O oh-my-zsh-install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x oh-my-zsh-install.sh
./oh-my-zsh-install.sh --skip-chsh


# .dotfiles
# Clone repo for dotfiles
figlet Clone setup repo
git clone https://github.com/stryku/setup

figlet dotfiles
cp setup/dotfiles/* ~/


# Create bin dir
mkdir -p ~/bin


# PyCharm
PYCHARM_NAME=pycharm-community-2020.2.3
PYCHARM_FILE=$PYCHARM_NAME.tar.gz
PYCHARM_DIR=~/programs/pycharm
mkdir -p $PYCHARM_DIR
wget https://download.jetbrains.com/python/$PYCHARM_FILE
tar -xzf $PYCHARM_FILE -C $PYCHARM_DIR
echo "#\!/bin/bash \ncd ${PYCHARM_DIR}/${PYCHARM_NAME}/bin && nohup ./pycharm.sh & " > ~/bin/pycharm
chmod +x ~/bin/pycharm


# Python virtualenvs
mkdir -p ~/my/programming/py/venvs



# Folders structure
figlet folders
mkdir -p \
    ~/my/kp \
    ~/my/programming \
    ~/my/tmp \



figlet without-sudo done
