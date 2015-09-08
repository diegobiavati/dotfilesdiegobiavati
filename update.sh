#! /bin/bash

echo "Update plugins .vim"
cd ~/.vim
git submodule foreach git pull origin master
git commit -m "Update plugins" -a
cd ~

echo "Update apt-get"
sudo apt-get update -y
echo "Upgrade apt-get"
sudo apt-get dist-upgrade -y
echo "Update Rubygems"
gem update --system
echo "Update gems"
gem update
