#!/bin/bash

yay -Sy --needed  --noconfirm wireplumber pipewire-alsa pipewire-pulse lib32-pipewire cronie breeze-gtk mesa-utils

yay -S hyprland-git sddm-git

yay -Sy --needed --noconfirm inetutils dnsutils conky openconnect networkmanager-openconnect modemmanager

yay -Sy --needed  --noconfirm vlc neofetch openvpn google-chrome usb_modeswitch update-grub nufraw geany p7zip btop

sudo cp -v ./ufraw.thumbnailer /usr/share/thumbnailers/

yay -S --needed  --noconfirm adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-ubuntu-font-family

yay -S tela-circle-icon-theme-ubuntu

yay -S ml4w-hyprland

ml4w-hyprland-setup

sudo systemctl enable sddm
sudo systemctl enable bluetooth
sudo systemctl enable cronie
sudo systemctl enable ModemManager

cp -v ./functions/* /home/renata/.config/fish/functions/

sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

echo -e "\n\nApós acabar executar:\n\nomf install lambda && omf theme lambda\n\n"

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
