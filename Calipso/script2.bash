#!/bin/bash
apt install tcpdump
apt install timelimit
apt install apache2
bash pruebaleds1.sh && bash pruebaleds1.sh && bash pruebaleds1.sh

sudo rm /var/www/html/collectors/salida*.data

while true 
do
clear
echo -e "\e[95mEscaneando Red.Por favor espere mientras trabajamos...\e[0m"
sudo touch ataque.txt

timelimit -t7 tcpdump  > escaneo.txt && bash lectoricmp.bash && bash lectorudp.bash && bash lectortcp.bash &&  bash lectorhttp.bash && bash lectorARP.bash &&
bash analizador.bash |cut -c 1-10 
cat escaneo.txt | wc -l > /var/www/html/collectors/salidaPaquetes.data
cat escaneo.txt | grep -c ICMP > /var/www/html/collectors/salidaICMP.data
cat escaneo.txt | grep -c DHCP > /var/www/html/collectors/salidaDHCP.data
cat escaneo.txt | grep -c HTTP > /var/www/html/collectors/salidaHTTP.data
cat escaneo.txt | grep -c [S]  > /var/www/html/collectors/salidaTCP.data
cat escaneo.txt | grep -c UDP  > /var/www/html/collectors/salidaUDP.data
cat escaneo.txt | grep -c ARP  > /var/www/html/collectors/salidaARP.data



bash analizador.bash
sleep 4s
echo -e "\e[96mReiniciando.\e[0m"
sleep 0.4
clear
echo -e "\e[96mReiniciando..\e[0m"
sleep 0.4
clear
echo -e "\e[96mReiniciando...\e[0m"
sleep 0.4
clear
echo -e "\e[96mReiniciando.\e[0m"
sleep 0.4
clear
echo -e "\e[96mReiniciando..\e[0m"
sleep 0.4
clear
echo -e "\e[96mReiniciando...\e[0m"
sleep 0.4
clear

sudo rm ataque.txt
done
