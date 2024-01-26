#!/bin/bash

sudo pacman -Sy --noconfirm archlinux-keyring

# sudo pacman -Sy --noconfirm nvidia nvidia-zen nvidia-libgl mesa opencl-nvidia

yay -Sy --needed nvidia-utils-beta nvidia-beta-dkms mesa
yay -S --needed lib32-nvidia-utils-beta nvidia-settings-beta
yay -S --needed opencl-nvidia-beta
yay -S --needed vulkan-icd-loader lib32-vulkan-icd-loader

yay -Sy --noconfirm supergfxctl

sudo systemctl enable supergfxd.service
