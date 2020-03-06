#!/bin/bash

########
# Ruby #
########
sudo apt install software-properties-common -y
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt update
sudo apt install rvm -y
echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc
