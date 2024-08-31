#!/bin/bash

yay -Sy --needed --noconfirm lib32-pipewire bluez-utils cronie

yay -Sy --needed --noconfirm xorg gnome glfw-wayland egl-wayland gnome-terminal

yay -Sy --needed --noconfirm gnome-tweaks gnome-browser-connector breeze-gtk

yay -Sy --needed --noconfirm gnome-nettool gnome-usage gnome-multi-writer fwupd arc-gtk-theme

sudo ln -s /dev/null /etc/udev/rules.d/61-gdm.rules

yay -Sy --needed --noconfirm inetutils dnsutils conky openconnect networkmanager-openconnect modemmanager

yay -Sy --needed  --noconfirm vlc neofetch openvpn google-chrome usb_modeswitch update-grub nufraw geany

sudo cp -v ./ufraw.thumbnailer /usr/share/thumbnailers/

yay -S --needed  --noconfirm adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji

yay -S --needed  --noconfirm gnome-shell-extension-dash-to-panel gnome-shell-extension-appindicator gnome-shell-extension-arch-update gnome-shell-extension-hidetopbar-git 


sudo systemctl enable gdm
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

cp -v /mnt/Backup/Home/.local/share/applications/launcher.desktop /home/renata/.local/share/applications/
cp -v /mnt/Backup/Home/.local/share/applications/DaVinciResolve.desktop /home/renata/.local/share/applications/
cp -v /mnt/Backup/Home/.local/share/applications/geany.desktop /home/renata/.local/share/applications/

mv -v /home/renata.bak/.local/share/icons/Te* /home/renata/.local/share/icons

sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

echo -e "\n\nApós acabar executar:\n\nomf install lambda && omf theme lambda\n\n"

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
