#!/bin/bash

yay -Sy --needed --noconfirm wireplumber pipewire-alsa pipewire-pulse lib32-pipewire bluez bluez-utils blueman network-manager-applet cronie

yay Sy --needed --noconfirm gdm xorg-xwayland xorg-xlsclients glfw-wayland egl-wayland

yay -Sy --needed --noconfirm gnome gnome-tweaks gnome-extension gnome-browser-connector gnome-shell-extensions qt5-styleplugins breeze

yay -Sy --needed --noconfirm nautilus-sendto gnome-nettool gnome-usage gnome-multi-writer adwaita-icon-theme xdg-user-dirs-gtk fwupd arc-gtk-theme

sudo sed -i 's/#WaylandEnable=false/WaylandEnable=true/g' /etc/gdm/custom.conf

sudo sed -i 's/MODULES=()/MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)/g' /etc/mkinitcpio.conf

sudo mkinitcpio -P

sudo ln -s /dev/null /etc/udev/rules.d/61-gdm.rules

yay -Sy --needed --noconfirm inetutils dnsutils python-pip conky okular openconnect networkmanager-openconnect modemmanager

yay -Sy --needed  --noconfirm ffmpeg vlc neofetch openvpn google-chrome snapd usb_modeswitch update-grub 

sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

yay -S --needed  --noconfirm adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji

sudo mkdir /usr/share/fonts/WindowsFonts
sudo cp -rv /mnt/Backup/Documents/LinuxCustomizations/MS-Fonts/* /usr/share/fonts/WindowsFonts/
sudo chmod 644 /usr/share/fonts/WindowsFonts/*
sudo fc-cache –force

sudo systemctl enable gdm.service
