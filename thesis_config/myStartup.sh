#!/bin/bash
echo odroid | sudo -S wvdial & disown
sleep 20
cd ~/RTK_thesis/RTKThesis/thesis_config
screen -d -m ./rtkrcv -s -o rtkperfectubuntu3.conf
