#!/bin/bash

echo "Starting shell script"
echo "Installing requirements"
sudo apt-get install build-essential git cmake pkg-config -y
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev -y
sudo apt-get install libxvidcore-dev libx264-dev -y
sudo apt-get install libgtk2.0-dev -y
sudo apt-get install libatlas-base-dev gfortran -y
sudo apt-get install python2.7-dev python3-dev -y

echo "Acquiring OpenCV 3.0.0"
cd ~
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.0.0.zip
unzip opencv.zip

echo "Acquiring OpenCV Contributions 3.0.0"
wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.0.0.zip
unzip opencv_contrib.zip

echo "Acquiring pip"
wget https://bootstrap.pypa.io/get-pip.py 
sudo python get-pip.py -y

echo "Installing virtual environments. . ."
sudo pip install virtualenv virtualenvwrapper -y
sudo rm -rf ~/.cache/pip

echo "Preparing .profile for virtual environments. . ."
sudo echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.profile
sudo echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.profile
source ~/.profile

echo "Setting up virtual environment (cv)"
mkvirtualenv cv

echo "Installing numpy on cv. . ."
pip install numpy

echo "Installing OpenCV 3.0.0"
cd ~/opencv-3.0.0/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.0.0/modules -D BUILD_EXAMPLES=ON ..

echo "Please check output of CMake.  Thank you."
