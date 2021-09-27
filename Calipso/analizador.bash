#!/bin/bash

if [ $(grep 1 ataque.txt | head -n 1 ) ]; then 

python verde.py off  && python rojo.py on &&  python pitido1.py  

else

python verde.py on && python rojo.py off && python pitido2.py

fi
