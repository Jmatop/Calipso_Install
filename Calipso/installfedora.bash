#!/bin/bash
sudo dnf -y install python 
sudo dnf -y install xterm 
sudo dnf -y install php 
sudo dnf -y install httpd 
wget https://devel.ringlet.net/files/sys/timelimit/timelimit-1.9.2.tar.xz 
tar -xf timelimit-1.9.2.tar.xz
cd timelimit-1.9.2/ 
make 
cd .. 
sudo cp timelimit-1.9.2/timelimit /usr/bin
sudo dnf -y install tcpdump
sudo dnf -y install net-tools 
sudo systemctl restart httpd 
touch calipso 
echo "#!/bin/bash" > calipso 
echo "xterm -e 'cd /home/$USER/Calipso/Scripts && bash script2.bash' &" > calipso 
sudo chmod +x calipso
sudo mv calipso /usr/bin 
cd .. 
sudo mv html/* /var/www/html/
sudo mv home/$USER/Calipso_Install/Calipso /home/$USER/Calipso
cd $HOME
cd /home/$USER/
rm -R Calipso_Install/


 
