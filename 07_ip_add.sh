#!/bin/bash

nmcli con mod "Wired connection 2" ipv4.addresses 192.168.15.100/24
nmcli con mod "Wired connection 2" ipv4.gateway 192.168.15.1
nmcli con mod "Wired connection 2" ipv4.dns "192.168.15.3 8.8.4.4"
nmcli con mod "Wired connection 2" ipv4.method manual
nmcli con down "Wired connection 2" && nmcli con up "Wired connection 2" 

nmcli connection add connection.id Lanlink connection.type vpn vpn.service-type openconnect vpn.data cookie-flags=2,gateway=vpn.lanlink.com.br,protocol=gp
