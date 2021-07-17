# Virtual-Desktop-Environment with Proxmox, LXC, RDP, LXDE and Guacamole

create container with lxc template "debian-10-standard_10.7-1_amd64.tar.gz" in proxmox virtual environment

run this script in container as root, it creates lxc virtual rdp desktops with browser, terminal and editor:

    wget https://raw.githubusercontent.com/playgroun-de/virtual-desktop/main/init.sh && bash init.sh

copy finished container as much clients as you need

connect to containers with guacamole via rdp

have fun!
