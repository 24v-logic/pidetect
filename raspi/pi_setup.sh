#!/bin/bash

echo "Starting shell script"
sudo apt-get install build-essential git cmake pkg-config -y
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev -y
sudo apt-get install libxvidcore-dev libx264-dev -y
sudo apt-get install libgtk2.0-dev -y
sudo apt-get install libatlas-base-dev gfortran -y
sudo apt-get install python2.7-dev python3-dev -y

cd ~
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.0.0.zip
unzip opencv.zip

wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.0.0.zip
unzip opencv_contrib.zip

wget https://bootstrap.pypa.io/get-pip.py 
sudo python get-pip.py -y

sudo pip install virtualenv virtualenvwrapper -y
sudo rm -rf ~/.cache/pip
