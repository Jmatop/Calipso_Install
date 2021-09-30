#!/bin/bash

sudo apt-get -y install python && sudo apt-get -y install apache2 && sudo apt-get -y install timelimit && sudo apt-get -y install tcpdump && sudo apt-get -y install net-tools && sudo apache2ctl configtest && sudo apache2ctl configtest
 && sudo systemctl restart apache2 && sudo ufw app list && sudo ufw app info "Apache Full"



 
