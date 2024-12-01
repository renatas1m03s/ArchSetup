#!/bin/bash

yay -Sy --needed  --noconfirm plasma-meta xorg-xlsclients bluez-utils blueman cronie  

yay -S --needed  --noconfirm packagekit-qt6 gnome-disk-utility konsole inetutils dnsutils conky

yay -S --needed  --noconfirm okular dolphin ark spectacle gwenview geany kcalc openconnect networkmanager-openconnect

yay -S --needed  --noconfirm kio kio-extras ffmpegthumbs kdegraphics-thumbnailers

yay -S --needed  --noconfirm kimageformats qt6-imageformats kdesdk-thumbnailers neofetch openvpn

yay -S --needed  --noconfirm vlc neofetch openvpn google-chrome usb_modeswitch update-grub nufraw geany p7zip btop pamac-tray-icon-plasma pamac-aur

yay -S --needed  --noconfirm adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji

yay -Sy --noconfirm plasma6-applets-panel-colorizer

sudo mkdir /usr/share/fonts/WindowsFonts
sudo cp -rv /mnt/Backup/Documents/LinuxCustomizations/MS-Fonts/* /usr/share/fonts/WindowsFonts/
sudo chmod 644 /usr/share/fonts/WindowsFonts/*
sudo fc-cache –force

sudo systemctl enable sddm
sudo systemctl enable bluetooth
sudo systemctl enable cronie
sudo systemctl enable ModemManager

cp -v ./functions/* /home/renata/.config/fish/functions/

if [ ! -d ~/.local/share/applications ]; then
	mkdir ~/.local/share/applications
fi

if [ ! -d ~/.local/share/icons ]; then
	mkdir ~/.local/share/icons
fi

cp -v /mnt/Backup/Home/.local/share/applications/DaVinciResolve.desktop /home/renata/.local/share/applications/
cp -v /mnt/Backup/Home/.local/share/applications/geany.desktop /home/renata/.local/share/applications/

mv -v /home/renata.bak/.local/share/icons/Te* /home/renata/.local/share/icons

sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp

sudo chmod a+rx /usr/local/bin/yt-dlp

echo -e "\n\nApós acabar executar:\n\nomf install lambda && omf theme lambda\n\n"

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish



