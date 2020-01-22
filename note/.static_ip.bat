@echo off
netsh interface ipv4 set address name="vEthernet (Default Switch)" source=static address=192.168.221.17 mask=255.255.255.240