#!/bin/bash
HOST='cddis.gsfc.nasa.gov'
USER='anonymous'
PASSWD='passwd'
FILE='igu.sp3.Z'
LOCAL_FILE='latest.sp3.Z'

ftp -n $HOST <<SCRIPT
user $USER $PASSWD
cd gps/products/latest/ultra
binary
newer $FILE $FILE
quit
SCRIPT
cp $FILE $LOCAL_FILE
uncompress -f $LOCAL_FILE
