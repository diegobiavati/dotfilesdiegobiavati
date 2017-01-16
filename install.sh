#!/bin/sh
echo "Instalação " (date)

echo "1 - Atualizando Repositórios"
sudo apt update -qq
echo "2 - Atualizando Sistema"
sudo apt full-upgrade -y -qq
echo "3 - Instalando Aplicações"
sudo apt install --quiet curl build-essential git-core vim-nox exuberant-ctags ncurses-term vim-gtk ack-grep zsh fortune screenfetch

sudo apt autoremove
sudo apt autoclean

