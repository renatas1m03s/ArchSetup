#!/bin/bash

# Driver do controle Xbox/8bitDo
cd /tmp && git clone https://github.com/medusalix/xone && cd xone
sudo ./install.sh --release

yay -Sy kpat steam-native-runtime protonup-qt gamescope-plus retroarch-git yuzu emulationstation-de pcsx2-git

