#!/bin/bash
echo odroid | sudo -S wvdial & disown
sleep 30
cd ~/RTK_thesis/RTKThesis/thesis_config
screen -d -m ./rtkrcv -s -o rtkLogging.conf
