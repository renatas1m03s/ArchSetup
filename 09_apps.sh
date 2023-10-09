#!/bin/bash

yay -Sy --noconfirm timeshift openrgb-git microsoft-edge-stable-bin teams qbittorrent

sudo pacman -Sy --noconfirm avidemux-qt gimp kdenlive remmina obs-studio darktable ddclient wine lutris telegram-desktop onlyoffice-bin

sudo sed -i 's/PIDFile=\/run/PIDFile=\/var\/run/g' /usr/lib/systemd/system/ddclient.service

sudo cp -v /mnt/Backup/Documents/LinuxCustomizations/ddclient.conf /etc/ddclient/ddclient.conf

sudo systemctl enable --now ddclient && sleep 3 && sudo systemctl restart ddclient && sleep 3 && sudo systemctl status ddclient

# Games
yay -Sy steam-native-runtime protonup-qt gamescope-plus retroarch-git yuzu emulationstation-de pcsx2-git
