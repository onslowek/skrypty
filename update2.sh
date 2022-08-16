#!/bin/bash
read -n 1 -p "Wykonać full-upgrade (f/F) czy upgrade (s/S)?" ans;

case $ans in
    f|F)
        echo '#1 update'
        sudo apt update
        echo '#2 upgrade'
        sudo apt full-upgrade -y
        echo '#3 autoremove'
        sudo apt autoremove -y
        echo '#4 clean'
        sudo rm -rf /var/cache/apt/archives/apt-fast
        sudo apt clean;;
    s|S)
        echo '#1 update'
        sudo apt update
        echo '#2 upgrade'
        sudo apt upgrade -y
        echo '#3 autoremove'
        sudo apt autoremove -y
        echo '#4 clean'
        sudo rm -rf /var/cache/apt/archives/apt-fast
        sudo apt clean;;
    *)
        exit;;
esac
