#!/bin/bash

pacman -Sy --noconfirm archlinux-keyring

pacman-key --init

pacman-key --populate archlinux

reflector --sort rate --latest 10 --save /etc/pacman.d/mirrorlist
