#!/bin/bash

clear

figlet -f smslant EZ

echo
echo Updating / Upgrading...
echo

sudo apt update -y > /dev/null
sudo apt full-upgrade -y > /dev/null
sudo apt --with-new-pkgs upgrade -y > /dev/null
sudo apt dist-upgrade -y > /dev/null

echo
echo Cleaning...
echo

sudo apt autoremove -y > /dev/null
sudo apt autoclean -y > /dev/null
sudo apt clean -y > /dev/null

echo
echo Extra...
echo

sudo apt list --upgradable -a > /dev/null
echo
echo Type sudo apt install package
echo

