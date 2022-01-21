#!/bin/bash

sudo dnf -y install python && sudo dnf -y install xterm && sudo dnf -y install php && sudo dnf -y install apache2 && sudo dnf -y install timelimit && sudo dnf -y install tcpdump && sudo dnf -y install net-tools && sudo apache2ctl configtest && sudo apache2ctl configtest && sudo systemctl restart apache2 && sudo ufw app list && touch calipso && echo "#!/bin/bash" > calipso && echo "xterm -e 'cd $HOME/Calipso/ && bash script2.bash' &" > calipso && sudo chmod +x calipso && sudo mv calipso /usr/bin && cd .. && sudo mv html/* /var/www/html/ && sudo mv $HOME/Calipso_Install/Calipso $HOME/Calipso && cd $HOME && sudo rm -R Calipso_Install && sudo ufw app info "Apache Full"

 
