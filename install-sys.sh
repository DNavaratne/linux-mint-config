#!/bin/bash

##### This script will install all neccessary applications after a fresh install #####

#Build tools
echo "installing build tools"
sudo apt install build-essential autoconf automake software-properties-common apt-transport-https wget -y

echo "#########################"
echo "#########################"
echo "#########################"

sleep 5

#install tools
#echo "installing git git-man liberror-perl terminator vlc adobe-flashplugin gparted snapd libcurl3"
#sudo apt install -y git git-man liberror-perl terminator vlc adobe-flashplugin gparted snapd libcurl3

echo "#########################"
echo "#########################"
echo "#########################"

sleep 5

#google chrome
echo "downloading google chrome latest stable edition"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb


echo "#########################"
echo "#########################"
echo "#########################"

sleep 5

#Atom VSCode
echo "installing VS Code"
#sudo snap install pycharm-community --classic
#sudo snap install atom --classic
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update && sudo apt install code
echo "#########################"
echo "#########################"
echo "#########################"

sleep 5

#youtube-dl
echo "installing youtube-dl"
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl


echo "#####*****installation finished for all packages*****#####"
