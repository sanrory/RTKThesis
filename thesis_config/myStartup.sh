#!/bin/bash

cd ~/RTKThesis/thesis_config
#screen -d -m ./rtkrcv2 -s -o newOpts.conf
#screen -d -m ./rtkrcv2 -s -o rtkLogging2.conf
screen -d -m sudo ./rtkrcv2 -s -o GPS_UART.conf
#screen -d -m ./rtkrcv2 -s -o UNSW.conf
