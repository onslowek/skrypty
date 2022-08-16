#!/bin/bash
# Skrypt do aktualizacji systemu i pakietow - odroid.pl
echo 'Krok 1 - update'
sudo apt update
echo 'Krok 2 - upgrade'
sudo apt upgrade -y
echo 'Krok 3 - autoremove'
sudo apt autoremove -y
echo 'Krok 4 - clean'
sudo rm -rf /var/cache/apt/archives/apt-fast
sudo apt clean
# echo 'Krok 5 - reboot'
# sudo reboot
