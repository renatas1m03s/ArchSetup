#!/bin/bash

echo -e '\nInstalando o sistema base INTEL - linux e linux-zen\n'

pacstrap /mnt base linux-firmware linux-zen linux-zen-headers dkms base-devel amd-ucode reflector

echo -e '\nGerando o FSTAB\n'

genfstab -U -p /mnt >> /mnt/etc/fstab

cat ./extra_fstab.txt >> /mnt/etc/fstab

cat /mnt/etc/fstab

echo -e '\nCopiando os arquivos do SetupMyArch\n'

mkdir /mnt/home/ArchSetup

cp -rv ./* /mnt/home/ArchSetup

echo -e '\nExecutando o chroot\n'

arch-chroot /mnt

