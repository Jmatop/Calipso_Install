#!/bin/bash

sudo apt-get -y install python 
sudo apt -y install xterm
sudo apt -y install php 
sudo apt-get -y install apache2
sudo apt-get -y install timelimit 
sudo apt-get -y install tcpdump 
sudo apt-get -y install net-tools 
sudo apache2ctl configtest 
sudo apache2ctl configtest 
sudo systemctl restart apache2 
sudo ufw app list
touch calipso 
echo "#!/bin/bash" > calipso 
echo "xterm -e 'cd $HOME/Calipso/ && bash script2.bash' &" > calipso 
sudo chmod +x calipso
sudo mv calipso /usr/bin
cd ..
sudo mv html/* /var/www/html/ 
sudo mv /home/$USER/Calipso_Install/Calipso /home/$USER/Calipso
cd $HOME
sudo rm -R Calipso_Install 
sudo ufw app info "Apache Full"
cd
