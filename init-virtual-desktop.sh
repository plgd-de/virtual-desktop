#!/bin/bash
apt update
apt upgrade -y
apt install xrdp -y
apt install lxde -y
apt remove clipit

useradd -m magenta
passwd magenta
adduser magenta netdev

echo "lxsession -s LXDE -e LXDE" > /home/magenta/.Xclients
chown magenta:magenta /home/magenta/.Xclients
chmod +x /home/magenta/.Xclients

systemctl restart xrdp

echo "done"
