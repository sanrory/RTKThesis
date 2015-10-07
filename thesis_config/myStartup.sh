#!/bin/bash
HOST='ftp.igs.org'
USER='anonymous'
PASSWD='nathan.adler@student.unsw.edu.au'
FILE='igs08.atx'

echo odroid | sudo -S wvdial & disown
sleep 20
cd ~/RTK_thesis/RTKThesis/thesis_config

ftp -n $HOST <<SCRIPT
user $USER $PASSWD
cd pub/station/general
binary
newer $FILE $FILE
quit
SCRIPT

screen -d -m ./rtkrcv -s -o rtkperfectubuntu2.conf

