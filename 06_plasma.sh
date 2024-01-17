#!/bin/bash

yay -Sy --needed  --noconfirm wireplumber pipewire-alsa pipewire-pulse lib32-pipewire bluez bluez-utils blueman network-manager-applet cronie

yay -S --needed  sddm xorg xorg-xwayland xorg-xlsclients qt5-wayland glfw-wayland plasma plasma-wayland-session egl-wayland

yay -S --needed  --noconfirm packagekit-qt5 gnome-disk-utility konsole inetutils dnsutils python-pip conky

yay -S --needed  --noconfirm okular dolphin konsole ark spectacle gwenview geany kcalc openconnect networkmanager-openconnect

yay -S --needed  --noconfirm ffmpeg smplayer kio5 kio-extras ffmpegthumbs kdegraphics-thumbnailers

yay -S --needed  --noconfirm kimageformats5 qt5-imageformats kdesdk-thumbnailers neofetch openvpn

yay -S --needed  --noconfirm resvg raw-thumbnailer google-chrome snapd usb_modeswitch

yay -S --needed --noconfirm update-grub pamac-tray-icon-plasma pamac-aur

sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

yay -S --needed  --noconfirm adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji

sudo mkdir /usr/share/fonts/WindowsFonts
sudo cp -rv /mnt/Backup/Documents/LinuxCustomizations/MS-Fonts/* /usr/share/fonts/WindowsFonts/
sudo chmod 644 /usr/share/fonts/WindowsFonts/*
sudo fc-cache –force

sudo systemctl enable sddm

