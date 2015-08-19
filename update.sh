#! /bin/bash

echo "Update apt-get"
sudo apt-get update -y
echo "Upgrade apt-get"
sudo apt-get dist-upgrade -y
echo "Update Rubygems"
gem update --system
echo "Update gems"
gem update
