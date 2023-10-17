#!/bin/bash

yay -Sy --needed --noconfirm wireplumber pipewire-alsa pipewire-pulse lib32-pipewire

yay -S --needed gnome

yay -S --needed --noconfirm cronie inetutils dnsutils python-pip conky gnome-disk-utility konsole openconnect networkmanager-openconnect

yay -S --needed --noconfirm ffmpeg vlc neofetch openvpn google-chrome snapd update-grub shotwell gnome-tweaks gnome-browser-connector

yay -S pamac-aur usb_modeswitch

sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

yay -S  --needed --noconfirm adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji

sudo mkdir /usr/share/fonts/WindowsFonts
sudo cp -rv /mnt/Backup/Documents/LinuxCustomizations/MS-Fonts/* /usr/share/fonts/WindowsFonts/
sudo chmod 644 /usr/share/fonts/WindowsFonts/*
sudo fc-cache –force

sudo systemctl enable gdm
sudo systemctl enable bluetooth
sudo systemctl enable cronie

