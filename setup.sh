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


# # timeshift --yes --restore --snapshot "$(sudo timeshift --list | tail -n 2 | head -n 1 | awk '{print $3}')"
