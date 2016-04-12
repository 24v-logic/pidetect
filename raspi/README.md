README
==============================
Requirements:

In order to perform the installation, make sure you have
[] gb of free space on your disk.

Next ensure your pi is up to date:

$ sudo apt-get update

$ sudo apt-get upgrade

$ sudo rpi-update

=============================

Installation:

chmod the bash scripts:

$ sudo chmod +x ~/. . ./pidetect/raspi/pi_setup.sh

$ sudo chmod +x ~/. . ./pidetect/raspi/opencv_setup.sh

Run the pi_setup bash script:

$ . ~/. . ./pidetect/raspi/pi_setup.sh

Make sure you are operating in the virtualenv (cv) before moving on:

Run the opencv_setup bash script:

$ . ~/. . ./pidetect/raspi/opencv_setup.sh

================================
