#!/bin/bash
# Skrypt do aktualizacji systemu i pakietow - odroid.pl zmodyfikowany by onslowek
echo '#1 update'
sudo apt update
echo '#2 upgrade'
sudo apt upgrade -y
echo '#3 autoremove'
sudo apt autoremove -y
echo '#4 clean'
sudo rm -rf /var/cache/apt/archives/apt-fast
sudo apt clean
# echo '#5 reboot'
# sudo reboot
