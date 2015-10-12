#!/bin/bash
HOST='ftp.igs.org'
USER='anonymous'
PASSWD='nathan.adler@student.unsw.edu.au'
FILE='igs08.atx'


ftp -n $HOST <<SCRIPT
user $USER $PASSWD
cd pub/station/general
binary
newer $FILE $FILE
quit
SCRIPT

