#!/bin/bash

# sudo pacman -Sy --noconfirm archlinux-keyring

# sudo pacman -S --needed nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader nvidia-libgl

yay -Sy --needed nvidia-525xx-utils
yay -S --needed nvidia-525xx-dkms
yay -S --needed lib32-nvidia-525xx-utils
yay -S --needed nvidia-525xx-settings
yay -S --needed vulkan-icd-loader lib32-vulkan-icd-loader
