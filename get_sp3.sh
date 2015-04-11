#!/bin/bash
HOST='cddis.gsfc.nasa.gov'
USER='anonymous'
PASSWD='passwd'
FILE='igu18396_00.sp3.Z'
LOCAL_FILE_Z='latestCorrection.sp3.Z'
LOCAL_FILE = 'latestCorrection.sp3'

ftp -n $HOST <<SCRIPT
user $USER $PASSWD
cd gps/products/latest/ultra
binary
get $FILE
quit
SCRIPT
cp FILE LOCAL_FILE_Z
uncompress LOCAL_FILE_Z
mv LOCAL_FILE corrections/LOCAL_FILE