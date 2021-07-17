#!/bin/bash
apt update
apt upgrade -y
apt install xrdp -y
apt install lxde -y
apt remove clipit -y
apt install nmap -y
apt install tmux -y
apt install tldr -y
apt install htop -y
apt install neofetch -y

useradd magenta; echo -e "Magenta1\nMagenta1" | passwd magenta
adduser magenta netdev

grep -v  "show_trash=1" /home/magenta/.config/pcmanfm/LXDE/desktop-items-0.conf > temp
mv temp /home/magenta/.config/pcmanfm/LXDE/desktop-items-0.conf
echo "show_trash=0" >> /home/magenta/.config/pcmanfm/LXDE/desktop-items-0.conf

echo "lxsession -s LXDE -e LXDE" > /home/magenta/.Xclients
chown magenta:magenta /home/magenta/.Xclients
chmod +x /home/magenta/.Xclients

systemctl restart xrdp

wget https://raw.githubusercontent.com/playgroun-de/virtual-desktop/main/panel.conf
cp panel.conf /home/magenta/.config/lxpanel/LXDE/panels/panel
chown magenta:magenta /home/magenta/.config/lxpanel/LXDE/panels/panel

echo "init abgeschlossen"

rm ./panel.conf
rm ./init.sh

echo "temporäre downloads entfernt"
