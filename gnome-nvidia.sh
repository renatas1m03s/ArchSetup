#!/bin/bash

yay -Sy --needed --noconfirm wireplumber pipewire-alsa pipewire-pulse lib32-pipewire bluez bluez-utils network-manager-applet cronie

yay -Sy --needed --noconfirm gdm xorg xorg-server xorg-xwayland wayland xorg-xlsclients glfw-wayland egl-wayland

yay -Sy --needed --noconfirm gnome gnome-tweaks gnome-browser-connector gnome-shell-extensions qt5-styleplugins breeze breeze-gtk

yay -Sy --needed --noconfirm nautilus-sendto gnome-nettool gnome-usage gnome-multi-writer adwaita-icon-theme xdg-user-dirs-gtk fwupd arc-gtk-theme gnome-terminal

# sudo sed -i 's/#WaylandEnable=false/WaylandEnable=true/g' /etc/gdm/custom.conf

# sudo sed -i 's/MODULES=()/MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)/g' /etc/mkinitcpio.conf

# sudo mkinitcpio -P

sudo ln -s /dev/null /etc/udev/rules.d/61-gdm.rules

# nvidia_drm.modeset=1 nvidia_drm.fbdev=1

yay -Sy --needed --noconfirm inetutils dnsutils python-pip conky okular openconnect networkmanager-openconnect modemmanager

yay -Sy --needed  --noconfirm ffmpeg vlc neofetch openvpn google-chrome usb_modeswitch update-grub gthumb nufraw geany

sudo cp -v ./ufraw.thumbnailer /usr/share/thumbnailers/

# sudo systemctl enable --now snapd.socket
# sudo ln -s /var/lib/snapd/snap /snap

yay -S --needed  --noconfirm adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji

sudo mkdir /usr/share/fonts/WindowsFonts
sudo cp -rv /mnt/Backup/Documents/LinuxCustomizations/MS-Fonts/* /usr/share/fonts/WindowsFonts/
sudo chmod 644 /usr/share/fonts/WindowsFonts/*
sudo fc-cache –force

sudo systemctl enable gdm.service
