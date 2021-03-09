#!/bin/bash

clear

figlet -f smslant EZ

echo
echo Updating / Upgrading...
echo

sudo apt update -y
sudo apt full-upgrade -y
sudo apt --with-new-pkgs upgrade -y
sudo apt dist-upgrade -y

echo
echo Cleaning...
echo

sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean -y

echo
echo Extra...
echo

sudo apt list --upgradable -a
echo
echo Type sudo apt install package
echo

