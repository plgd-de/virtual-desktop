#!/bin/bash
apt update
apt upgrade -y
apt install xrdp -y
apt install lxde -y
apt remove clipit

useradd -m magenta
passwd magenta
adduser magenta netdev

nano /home/magenta/.config/pcmanfm/LXDE/desktop-items-0.conf

grep -v  "show_trash=1" /home/magenta/.config/pcmanfm/LXDE/desktop-items-0.conf > temp
mv temp /home/magenta/.config/pcmanfm/LXDE/desktop-items-0.conf
echo "show_trash=0" >> /home/magenta/.config/pcmanfm/LXDE/desktop-items-0.conf

wget https://raw.githubusercontent.com/playgroun-de/virtual-desktop/main/panel.conf
cp panel.conf /home/magenta/.config/lxpanel/LXDE/panels/panel
chown magenta:magenta /home/magenta/.config/lxpanel/LXDE/panels/panel

echo "lxsession -s LXDE -e LXDE" > /home/magenta/.Xclients
chown magenta:magenta /home/magenta/.Xclients
chmod +x /home/magenta/.Xclients

systemctl restart xrdp

echo "done"
