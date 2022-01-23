#!/bin/bash

if [ $(cat escaneo.txt | grep -c UDP) -gt 2500 ]; then

echo  -e "\e[41mTe estan haciendo un DoS con UDP\e[0m"
sleep 1s
echo 1 >> ataque.txt
sleep 2s
else
echo -e "\e[0;32mNo se ha detectado ningun DoS con UDP\e[0m"
echo 0 >> ataque.txt

fi


