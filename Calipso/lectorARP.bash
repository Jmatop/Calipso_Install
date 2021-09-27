#!/bin/bash

if [ $(cat escaneo.txt | grep -c ARP) -gt 2500 ]; then

echo -e "\e[41mTe estan haciendo un ARP Spoofing o MITM\e[0m" 
sleep 1s
echo 1 >> ataque.txt 
sleep 1s
else
echo -e "\e[0;32mNo se ha detectado ningun ataque con protocolo ARP\e[0m"
echo 0 >> ataque.txt
sleep 3s
fi


