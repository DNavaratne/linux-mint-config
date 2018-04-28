#!/bin/bash

##### This script will install all neccessary applications after a fresh install #####

#Build tools
echo "installing build tools"
sudo apt install python3-gdbm build-essential autoconf automake -y


#install tools
echo "installing terminator, vlc, adobe-flashplugin gparted"
sudo apt install -y git git-man liberror-perl terminator vlc adobe-flashplugin gparted

#install python 3.6

echo "installing python3.6"
sudo add-apt-repository -y ppa:jonathonf/python-3.6
sudo apt update
sudo apt install -y python3.6



#google chrome
echo "downloading google chrome latest stable edition"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y libcurl3
sudo dpkg -i google-chrome-stable_current_amd64.deb


#Atom

echo "installing atom editor"
wget https://atom.io/download/deb -O /tmp/atom-amd64.deb
sudo dpkg -i /tmp/atom-amd64.deb

#youtube-dl

echo "installing youtube-dl"

sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl

sudo chmod a+rx /usr/local/bin/youtube-dl

#Steps to make python 3.6 default
echo "Make python 3.6 default by"
echo "sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2 "
echo "update-alternatives --list python3"
echo "sudo update-alternatives --config python3"

#installing pycharms community edition

echo "installing pycharms"

#sudo snap install pycharm-community --classic

wget https://download.jetbrains.com/python/pycharm-community-2018.1.2.tar.gz -O /tmp/pycharm-community-2018.1.2.tar.gz
tar xvzf pycharm-community*.tar.gz -C /tmp/
sudo su -c "chown -R root:root /tmp/pycharm*"
sudo mkdir /opt/pycharm-community
sudo mv /tmp/pycharm-community* /opt/pycharm-community
sudo su -c "ln -s /opt/pycharm-community/bin/pycharm.sh /usr/local/bin/pycharm"
sudo su -c "ln -s /opt/pycharm-community/bin/inspect.sh /usr/local/bin/inspect"

echo "#####*****installation finished for all packages*****#####"

