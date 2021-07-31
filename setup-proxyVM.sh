#!/bin/bash

cd;

# get the files
wget https://github.com/tasket/Qubes-vpn-support/archive/refs/heads/master.zip;

# unzip that
unzip master.zip;

# make vpn dir
sudo mkdir -p /rw/config/vpn;

# go to fresh dir
sudo cd /rw/config/vpn;

# get config files
sudo wget https://www.privateinternetaccess.com/openvpn/openvpn-strong.zip;
sudo unzip openvpn-strong.zip;

# copy the file to conf
sudo cp us_denver.ovpn vpn-client.conf;

# back home
cd;

# back to run install
cd Qubes-vpn-support-master;

sudo bash ./install;


