#!/bin/bash
HOST='cddis.gsfc.nasa.gov'
USER='anonymous'
PASSWD='passwd'
FILE='igu18395_18.sp3.Z'

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
cd gps/products/latest/ultra
get $FILE
quit
END_SCRIPT
exit 0