#!/bin/bash

#sudo snap install fast && sleep 03 && sudo snap install fast

sudo wget https://github.com/ddo/fast/releases/download/v0.0.4/fast_linux_amd64 -O /usr/bin/fast

sudo chmod +x /usr/bin/fast

# sudo modprobe nct6775

# echo nct6775 | sudo tee /etc/modules-load.d/nct6775.conf

sudo sensors-detect --auto

ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub | ssh -p 3389 renata@192.168.15.3 'cat >> .ssh/authorized_keys'

sudo crontab -l -u renata | cat - crontab.txt | sudo crontab -u renata -

crontab -l

mkdir -p ~/.config/conky

cp -v ~/Documents/LinuxCustomizations/MinimalisConky/conky-sed.conf ~/.config/conky/conky.conf

# if [ ! -d /home/renata/.config/autostart ]; then
# 	mkdir /home/renata/.config/autostart
# fi

# cp -v ./conkyx-start.sh.desktop /home/renata/.config/autostart/


