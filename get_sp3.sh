#!/bin/bash
HOST='cddis.gsfc.nasa.gov'
USER='anonymous'
PASSWD='passwd'
FILE='igu18396_00.sp3.Z'

ftp -n $HOST <<SCRIPT
user $USER $PASSWD
cd gps/products/latest/ultra
binary
get $FILE
quit
SCRIPT