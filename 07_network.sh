#!/bin/fish

# Parameters for onboard connection
set ADAPTER1 (ip link show | grep -B 1 "08:bf:b8:99:e6:3e" | grep eno1 | awk -F':' '{print $2}')
set CONECTION1 (nmcli con show | grep $ADAPTER1 | awk '{print $1" "$2" "$3}')
set CONECTION1_NEWNAME "Onboard"

# Configuring onboard connection to a fixed ip adddress

nmcli con mod $CONECTION1 connection.id $CONECTION1_NEWNAME
nmcli con mod $CONECTION1_NEWNAME ipv4.addresses 192.168.15.100/24
nmcli con mod $CONECTION1_NEWNAME ipv4.gateway 192.168.15.1
nmcli con mod $CONECTION1_NEWNAME ipv4.dns "192.168.15.3 8.8.4.4"
nmcli con mod $CONECTION1_NEWNAME ipv4.method manual
nmcli con down $CONECTION1_NEWNAME && nmcli con up $CONECTION1_NEWNAME 

# Configuring VPN with Lanlink
# nmcli connection add connection.id Lanlink connection.type vpn vpn.service-type openconnect vpn.data cookie-flags=2,gateway=vpn.lanlink.com.br,protocol=gp
