#!/bin/bash

sudo apt-get -y install python && apt -y install php && sudo apt-get -y install apache2 && sudo apt-get -y install timelimit && sudo apt-get -y install tcpdump && sudo apt-get -y install net-tools && sudo apache2ctl configtest && sudo apache2ctl configtest && sudo systemctl restart apache2 && sudo ufw app list && touch calipso && echo "#!/bin/bash" > calipso && echo "xterm -e 'cd /home/calipso/Calipso/ && bash script2.bash' &" > calipso && sudo chmod +x calipso && sudo mv calipso /usr/bin && cd .. && mv html/* /var/www/html/ && mv /home/calipso/Calipso_Install/Calipso /home/calipso/Calipso && cd /home/calipso/ && rm -R Calipso_Install && sudo ufw app info "Apache Full"
