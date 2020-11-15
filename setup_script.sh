#!/bin/bash

# TODO:
# brave
# vs code
# vim
# virtualbox
# docker
# keepassxc
# doublecommander
# filezilla

# Fail on error
set -e

function decode {
    echo "$1" | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
}

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

# Vim
apt install vim -y
