#!/bin/bash

sudo dnf -y install python && sudo dnf -y install xterm && sudo dnf -y install php && sudo dnf -y install httpd && wget https://devel.ringlet.net/files/sys/timelimit/timelimit-1.9.2.tar.xz && tar -xf timelimit-1.9.2.tar.xz && sudo ./timelimit-1.9.2/build-and-test-all.pl && sudo cp timelimit-1.9.2/timelimit /usr/bin && sudo dnf -y install tcpdump && sudo dnf -y install net-tools && sudo systemctl restart httpd && sudo ufw app list && touch calipso && echo "#!/bin/bash" > calipso && echo "xterm -e 'cd $HOME/Calipso/ && bash script2.bash' &" > calipso && sudo chmod +x calipso && sudo mv calipso /usr/bin && cd .. && sudo mv html/* /var/www/html/ && sudo mv $HOME/Calipso_Install/Calipso $HOME/Calipso && cd $HOME && sudo rm -R Calipso_Install && sudo ufw app info "Apache Full"

 
