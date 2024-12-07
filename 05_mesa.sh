#!/bin/bash

sudo pacman -Sy --noconfirm archlinux-keyring

sudo pacman -Sy --noconfirm mesa lib32-mesa xf86-video-amdgpu vulkan-radeon lib32-vulkan-radeon

# needed by Davinci Resolve
yay -Sy --noconfirm opencl-amd
