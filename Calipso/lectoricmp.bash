#!/bin/bash
 
if [ $(cat escaneo.txt | grep -c ICMP ) -gt 2500 ]; then

echo -e "\e[41mTe estan haciendo un Flooding ICMP o un escaneo de HOST con NMAP\e[0m" 
sleep 1s
echo 1 >> ataque.txt 
sleep 5s
else
echo -e "\e[0;32mNo se ha detectado ningun ataque que use el protocolo ICMP\e[0m"
echo 0 >> ataque.txt
sleep 3s
fi

