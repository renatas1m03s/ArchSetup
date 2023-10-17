#!/bin/bash

yay -Sy --needed  --noconfirm wireplumber pipewire-alsa pipewire-pulse lib32-pipewire

yay -S --needed  --noconfirm network-manager-applet cronie inetutils dnsutils python-pip

yay -S --needed  --noconfirm bluez bluez-utils blueman conky

yay -S --needed  sddm-git xorg xorg-xwayland xorg-xlsclients qt5-wayland glfw-wayland

yay -S --needed  --noconfirm plasma packagekit-qt5 gnome-disk-utility konsole

yay -S --needed  plasma-wayland-session egl-wayland

yay -S --needed  --noconfirm okular dolphin konsole ark spectacle gwenview geany kcalc openconnect networkmanager-openconnect

yay -S --needed  --noconfirm ffmpeg smplayer kio kio-extras ffmpegthumbs kdegraphics-thumbnailers

yay -S --needed  --noconfirm kimageformats qt5-imageformats kdesdk-thumbnailers neofetch openvpn

yay -S --needed  --noconfirm resvg raw-thumbnailer google-chrome snapd usb_modeswitch

yay -S --needed  pamac-aur

yay -S --needed  --noconfirm update-grub pamac-tray-icon-plasma

sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

yay -S --needed  --noconfirm adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji

sudo mkdir /usr/share/fonts/WindowsFonts
sudo cp -rv /mnt/Backup/Documents/LinuxCustomizations/MS-Fonts/* /usr/share/fonts/WindowsFonts/
sudo chmod 644 /usr/share/fonts/WindowsFonts/*
sudo fc-cache –force

sudo systemctl enable sddm

