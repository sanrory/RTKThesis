#!/bin/bash
echo odroid | sudo -S wvdial & disown
sleep 20
cd ~/rtklib/RTKLIB-master/app/rtkrcv
screen -d -m rtkrcv -s -o rtkperfectubuntu2.conf
